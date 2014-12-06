class PlayerAnalysis
  include ActiveModel::Model

  attr_reader :name, :team, :player_profile, :position, :stats, :weeks, :fan_points

  def initialize(name, weeks = [], stats = [])
    @name = name
    @weeks = weeks
    @stats = stats
  end

  def player_profile
    player_id = Player.where(name: @name).first.id
    @player_profile = Player.find(player_id)
  end

  def position
    @position = @player_profile.position
  end

  def team
    @team = @player_profile.team.abbr_name
  end

  def fan_points(year, season)
    # @fan_points = @player_profile.fan_points
  end

  # method that retrieves player's stats for each provided week
  def retrieve_weekly_stats
    @weekly_stats = []

    unless @weeks.empty?
      @weeks.each { |week| return @weekly_stats << self.player_profile.stats.where(week_id: week).first }
    end
  end

  # method that parses each week's stats for player and extracts specified statistic
  def retrieve_selected_stats

  end
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

end
