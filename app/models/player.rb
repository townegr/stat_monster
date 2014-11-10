class Player < ActiveRecord::Base
  has_many :rosters
  has_many :seasons, through: :rosters, dependent: :destroy
  has_many :statistics, through: :rosters, dependent: :destroy
  has_many :statuses
  has_many :reports, through: :statuses, dependent: :destroy
  belongs_to :team

  def self.retrieve_player_data
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
      sleep(1)
    end
  end
end
