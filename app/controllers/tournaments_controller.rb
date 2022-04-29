class TournamentsController < ApplicationController
  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    # @tournament.party_id = current_user.id
    if @tournament.save
      redirect_to tournaments_path
    else
      render :new
    end
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    tournament = Tournament.find(params[:id])
    tournament.update(tournament_params)
    redirect_to tournament_path(tournament.id)
  end

  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy
    redirect_to tournaments_path
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name, :dates)
  end
end
