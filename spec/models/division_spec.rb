require 'rails_helper'

RSpec.describe Division, type: :model do
  before(:each) do
    @afc_north = Division.create!({ name: "AFC North", conference: "AFC",sb_five: false })
    @afc_west = Division.create!({ name: "AFC West", conference: "AFC", sb_five: true })
    @nfc_north = Division.create!({ name: "NFC North", conference: "NFC", sb_five: false })
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
    })

    @chiefs = @afc_west.teams.create({

      division_id: @afc_west.id,
      name: "Denver Broncos",
      wins: 500,
      losses: 456,
      ties: 10,
      rank: 14,
      year_started: 1960,
      super_bowl: true

    })

    @broncos = @afc_west.teams.create({
      division_id: @afc_west.id,
      name: "Kansas City Chiefs",
      wins: 521,
      losses: 433,
      ties: 12,
      rank: 1,
      year_started: 1960,
      super_bowl: true,
    })

    @bears = @nfc_north.teams.create({

      division_id: @nfc_north.id,
      name: "Chicago Bears",
      wins: 786,
      losses: 624,
      ties: 42,
      rank: 16,
      year_started: 1920,
      super_bowl: true
    })

    @lions = @nfc_north.teams.create({
      division_id: @nfc_north.id,
      name: "Detroit Lions",
      wins: 579,
      losses: 702,
      ties: 34,
      rank: 8,
      year_started: 1930,
      super_bowl: false
    })

  end

  describe "divisions#index" do 
    it "displays all the divisions in the database" do
      expect(@afc_north.name).to eq("AFC North");
      expect(@afc_west.name).to eq("AFC West");
      expect(@nfc_north.name).to eq("NFC North");
    end
  end

  describe "instance_methods" do 
    it "displays the number of teams in each division" do
      expect(@afc_west.count).to eq(2)
    end
  end

  describe "class_methods" do
    it "orders the divisions alphabetically by name" do
      expect(Division.sort_by_created_date).to eq([@afc_north, @afc_west, @nfc_north])
    end
  end
end 