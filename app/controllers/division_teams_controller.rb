class DivisionTeamsController < ApplicationController
  def index
    @division = Division.find(params[:id])
    @teams = @division.teams
    if (params[:name]) == "name_asc"
      @teams = @division.teams.sort_by_name
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