class TeamsController < ApplicationController

  def index
    @teams = Team.all
    @teams_sorted = Team.sort_by_name
    @teams = Team.hide_false
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    team = Team.find(params[:id])
    team.update!({        
      division_id: params[:division_id],
      name: params[:name],
      wins: params[:wins],
      losses: params[:losses],
      ties: params[:ties],
      rank: params[:rank],
      year_started: params[:year_started],
      super_bowl: params[:super_bowl]
    })

    redirect_to "/teams/#{team.id}"
  end

  def destroy
    Team.destroy(params[:id])

    redirect_to "/teams"
  end
end