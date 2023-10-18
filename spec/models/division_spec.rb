require 'rails_helper'

RSpec.describe Division do 
  before(:each) do 
    @afc_north = Division.create!({ name: "AFC North", conference: "AFC",sb_five: false })
    @ravens = @afc_north.teams.create!(
      {
        division_id: @afc_north.id,
        name: "Baltimore Ravens",
        wins: 243,
        losses: 190,
        ties: 1,
        rank: 6,
        year_started: 1996,
        super_bowl: true
      })
    
    @browns = @afc_north.teams.create(
      {
        division_id: @afc_north.id,
        name: "Cleveland Browns",
        wins: 501,
        losses: 524,
        ties: 11,
        rank: 12,
        year_started: 1944,
        super_bowl: false
      }
    ) 
  end
  describe "divisions#index" do 
    it "returns the team name" do
      expect(@afc_north.name).to eq("AFC North")
      expect(@afc_north.teams).to eq([@ravens, @browns])
      require 'pry'; binding.pry
    end
  end

  describe "count" do
    it "displays a count of all the teams in the selected division" do
      puts @afc_north.count
      expect(@afc_north.count).to eq(2)
    end
  end



end 