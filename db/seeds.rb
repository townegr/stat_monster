["players", "teams", "schedules", "weeks", "games", "stats", "reports", "statuses"].each do |table|
  ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH 1")
end

# activate API key
SportsDataApi.set_key(:nfl, Rails.application.secrets[:sports_data_api][:key])
puts "Sports Data API activated"

# build NFL teams
SportsDataApi::Nfl.teams.each do |team|
  Team.create!(abbr_name: team.id, market: team.market, name: team.name)
end
puts "NFL teams seeded"
sleep(1)

# create all NFL player profiles
offense_positions = ["QB", "WR", "RB", "TE"]

Team.all.each do |team|
  SportsDataApi::Nfl.team_roster(team.abbr_name).players.each do |p|
    if p.player != nil && offense_positions.include?(p.player[:position])
      name = p.player[:name_full]
      position = p.player[:position]
      player_code = p.player[:id]
      team_id = team.id

      Player.create(name: name, position: position, player_code: player_code, team_id: team_id)
    end
  end
  puts "#{team.name} players seeded"
  sleep(1)
end

# create 17 weeks
1.upto(17) { |i| Week.create(week_number: i) }
puts "Regular season weeks seeded"

# create games for each week
Week.all.each do |week|
  SportsDataApi::Nfl.weekly(2014, :REG, week.week_number).games.each do |g|
    away_team = g.away
    home_team = g.home
    week_number = week.week_number

    Game.create(away_team: away_team, home_team: home_team, week_id: week_number)
  end
  puts "Week #{week.week_number} games seeded"
  sleep(1)
end

# update player stats for each week
STAT_TYPES = [:rushing, :receiving, :passing]
Game.all.each do |g|
  STAT_TYPES.each do |type|
    # if g.week_id == 11
    binding.pry
      SportsDataApi::Nfl.player_week_stats(2014, :REG, g.week_id, g.home_team, g.away_team).stats[type].each do |s|
        Player.all.each do |p|
          if p.name == s[:name]
            player = p.stats.find_or_create_by(week_id: g.week_id)
            binding.pry
            player.attributes.each do |k, v|
              s.each do |item, el|
                if k == item.to_s
                  player[k] = s[item] if s[item].present?
                  player.save!
                end
              end
            end
          end
          puts "#{p.name}'s #{type.to_s} stats updated for Week #{g.week_id}"
        end
      end
    # end
      puts "Week #{g.week_id} stats updated"
      sleep(1)
  end
end


puts "Done seeding"
