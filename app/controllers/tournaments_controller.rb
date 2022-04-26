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

  def index
    @tournaments = Tournament.all
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name, :dates)
  end
end
