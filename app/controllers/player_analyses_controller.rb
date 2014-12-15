class PlayerAnalysesController < ApplicationController

  def new
    @player_analysis = PlayerAnalysis.new
    @weeks = Week.all.map { |w, v| w[:week_number] }
  end

  def create
    @player_analysis = PlayerAnalysis.new(player_analysis_params)

    render :index
  end

  private

  def player_analysis_params
     params.require(:player_analysis).permit(:name, { weeks: [] }, { stats: [] })
  end
end
