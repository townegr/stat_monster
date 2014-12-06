class PlayerAnalysesController < ApplicationController

  def new
    @player_analysis = PlayerAnalysis.new
  end

  def create
    @player_analysis = PlayerAnalysis.new(player_analysis_params)

    respond_to do |format|
      if @player_analysis.save
        format.html { redirect_to player_analysis_url, notice: "Player analysis updated" }
        format.json { render json: @analysis, status: :created, location: @player_analysis }
      else
        format.html { render action: "new" }
        format.json { render json: @player_analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @player_analysis = PlayerAnalysis.find(params[:id])
  end

  private

  def player_analysis_params
     params.require(:player_anlysis).permit(:name, :weeks, :stats)
  end
end
