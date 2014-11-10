class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def index
    @players = Player.all.page(params[:page]).per(10)
  end

  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to players_url, notice: "Player added" }
        format.json { render json: @player, status: :created, location: @player }
      else
        format.html { render action: "new" }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])

    respond_to do |format|
      if @player.update_attributes(player_params)
        format.html { redirect_to players_url, notice: "Player updated" }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to players_url, notice: "Player deleted" }
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :team, :position, :fan_points, :player_id)
  end
end
