class DivisionsController < ApplicationController

  def index
    @divisions = Division.all
    @divisions.shuffle
    @division = Division.find(params[:id]) if params[:name] == "edit"
  end

  def show
    @division = Division.find(params[:id])
  end

  def new
  end

  def create
    Division.create({
      name: params[:name], 
      conference: params[:conference], 
      sb_five: params[:sb_five]
    })

    redirect_to "/divisions"
  end

  def edit
    @division = Division.find(params[:id])
  end

  def update
    division = Division.find(params[:id])
    division.update({
      name: params[:name],
      conference: params[:conference],
      sb_five: params[:sb_five]
    })

    redirect_to "/divisions/#{division.id}"
  end

  def destroy
    division = Division.find(params[:id])
    teams = Team.all
    teams.each do |team|
      if team.division_id == division.id
        team.destroy
      end
    end
    division.destroy
    
    redirect_to "/divisions"
  end
end