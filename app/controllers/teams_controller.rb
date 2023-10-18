class TeamsController < ApplicationController

  def index
    @teams = Team.all
    @teams = Team.sort(:name) if (params[:sort]) == "name_asc"
    @teams = Team.hide_false
    # require 'pry'; binding.pry
    # @division = get_division
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def sort

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

end