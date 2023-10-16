class DivisionsController < ApplicationController

  def index
    @divisions = Division.all
    @divisions_sorted_by_created_date = Division.sort_by_created_date
  end

  def show
    @division = Division.find(params[:id])
  end

  def new
    
  end

  def create
    division = Division.create({
      name: params[:name], 
      conference: params[:conference], 
      sb_five: params[:sb_five]
    })

    division.save

    redirect_to "/divisions"
  end
end