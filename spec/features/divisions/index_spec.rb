require 'rails_helper'

RSpec.describe "divisions#index", type: :feature do
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

  describe "when I visit '/parents'" do
    it "shows the name of each division in the database" do
      
      visit "/divisions"

      expect(page).to have_content(@afc_north.name)
      expect(page).to have_content(@afc_west.name)
      expect(page).to have_content(@nfc_north.name)
    end

    it "orders each division by when it was creeated, with the first created unit first" do

      visit "/divisions"
      expect(@afc_north.name).to appear_before(@afc_west.name)
      expect(@afc_west.name).to appear_before(@nfc_north.name)

      expect(page).to have_content(@afc_north.created_at)
      expect(page).to have_content(@afc_west.created_at)
      expect(page).to have_content(@nfc_north.created_at)
    end

    it "has a link on every page that takes me to the /divisions index page" do
      
      visit "/divisions"

      expect(page).to have_link("Divisions")
      expect(page).to have_content("Divisions")
      click_link("Divisions")

      visit "/divisions/#{@afc_north.id}"

      expect(page).to have_link("Divisions")
      click_link("Divisions")

      expect(page).to have_current_path("/divisions")
      expect(page).to have_content(@afc_north.name)
      expect(page).to have_content(@afc_west.name)
      expect(page).to have_content(@nfc_north.name)
    end
  end
end
