require 'rails_helper'

RSpec.describe Team, type: :model do
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
      name: "Kansas City Chiefs",
      wins: 500,
      losses: 456,
      ties: 10,
      rank: 14,
      year_started: 1960,
      super_bowl: true

    })

    @broncos = @afc_west.teams.create({
      division_id: @afc_west.id,
      name: "Denver Broncos",
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

  describe "class methods" do 
    describe "sort_by_name" do
      it "sorts all of the teams in the system alphabetically by name" do
        expect(Team.all.sort_by_name).to eq([@ravens, @bears, @browns, @broncos, @lions, @chiefs])
      end
    end
    
    describe "hide_boolean" do
      it 'shows only Super Bowl winners when true' do 
        expect(Team.hide_boolean).to eq([@ravens, @chiefs, @broncos, @bears])
      end
    end
  end
end

