SportsDataApi.set_key(:nfl, Rails.application.secrets[:sports_data_api][:key])

SportsDataApi::Nfl.teams.each do |team|
  Team.create!(abbr_name: team.id, market: team.market, name: team.name)
end
