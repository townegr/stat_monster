class PlayerAnalysis
  include ActiveModel::Model

  # before_create :format_integer
  attr_reader :name, :weeks, :stats

  def initialize(params = {})
    @name = params[:name]
    @weeks = params[:weeks]
    @stats = params[:stats]
  end

  # def player_profile
  #   player_id = Player.where(name: @name).first.id
  #   @player_profile = Player.find(player_id)
  # end

  # def position
  #   @position = @player_profile.position
  # end

  # def team
  #   @team = @player_profile.team.abbr_name
  # end

  # def fan_points(year, season)
  #   # @fan_points = @player_profile.fan_points
  # end

  # # method that retrieves player's stats for each provided week
  # def retrieve_weekly_stats
  #   @weekly_stats = []

  #   unless @weeks.empty?
  #     @weeks.each { |week| return @weekly_stats << self.player_profile.stats.where(week_id: week).first }
  #   end
  # end

  # method that parses each week's stats for player and extracts specified statistic
  def retrieve_selected_stats

  end

  # "pass_att", "pass_comp", "pass_yds", "pass_td", "pass_int",
  # "rush_att", "rush_yds", "rush_td", "rec_tgt", "receptions",
  # "rec_yds", "rec_td", "ret_yds", "ret_td", "misc_2pt", "fum_lost"

  # def build_report
  #   # check if
  #   # @detailed_report = @player_profile.stats.where(week_id: @weeks)

  #   unless @weeks.count > 1
  #     # @report = @detailed_report.stats
  #   else
  #     @detailed_report.each do |report|
  #       @multiple_analyses = []
  #       report.stats
  #     end
  #   end
  # end

  # def format_integer
  #   loop do
  #     self.map {|str| str.class == Array ? str.to_i : }
  #   end
  # end

  # def to_int
  #   self.map {|str| str.to_i}
  #   # if self.class == Array
  #   #   self.map {|str| str.to_i}
  #   # else
  #   #   self.to_i
  #   # end
  # end


end
