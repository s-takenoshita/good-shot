class PartiesController < ApplicationController
  def new
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
    if @party.save
      puts "--------> @party.save"
      set_party_id(@party.id)
      redirect_to tournaments_path
    else
      render :new
    end
  end
  
  def edit
    @party = Party.find(params[:id])
  end

  def update
    party = Party.find(params[:id])
    party.update(party_params)
    redirect_to party_path(party.id)
  end

  def index
    @parties = Party.all
  end

  def show
    @party = Party.find(params[:id])
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
    redirect_to partys_path
  end

  private

  def party_params
    params.require(:party).permit(:name, :activity_area, :description)
  end

  def set_party_id(party_id)
    puts "--------> set_party_id(party_id)"
    user = User.find(current_user.id)
    user.party_id = party_id
    user.save
  end
end
