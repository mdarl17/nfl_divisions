class DivisionTeamsController < ApplicationController
  def index
    @division = Division.find(params[:id])
    @teams = @division.teams
    # require 'pry'; binding.pry
  end

end