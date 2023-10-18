class DivisionTeamsController < ApplicationController
  def index
    if (params[:name]) == "name_asc"
      @teams = Team.teams_in_division(params[:id])
      @teams_ordered = Team.order(name: :asc)
      @division = Division.find(params[:id])
    elsif (params[:name]) == "division"
      @division = Division.find(params[:id])
    else
      @divisions = Division.all
      @division = Division.find(params[:id])
      @teams = Team.teams_in_division(params[:id])
    end
  end

  def new
  end

  def create
    Team.create!({
      division_id: params[:id],
      name: params[:name],
      wins: params[:wins],
      losses: params[:losses],
      ties: params[:ties],
      rank: params[:rank],
      year_started: params[:year_started],
      super_bowl: params[:super_bowl]
    })

    redirect_to "/divisions/#{params[:id]}/teams"
  end
end