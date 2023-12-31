class DivisionsController < ApplicationController

  def index
    @divisions = Division.sort_by_created_date
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
    Division.destroy(params[:id])

    redirect_to "/divisions"
  end
end