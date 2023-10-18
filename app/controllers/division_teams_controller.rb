class DivisionTeamsController < ApplicationController
  def index
    if (params[:name]) == "name_asc"
      @teams = Team.where(division_id: params[:id]).order(name: :asc) 
    elsif (params[:name]) == "div_only"
            @division = Division.find(params[:id])
    else
      @teams = Team.all
      @divisions = Division.all
      @division = Division.find(params[:id])
    end
  end

  # def show
  #   require 'pry'; binding.pry
  #   @divisions = Division.find(params[:id])
  # end


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