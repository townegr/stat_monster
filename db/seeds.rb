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
Team.all.each do |team|
  SportsDataApi::Nfl.team_roster(team.abbr_name).players.each do |p|
    unless p.player == nil
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
