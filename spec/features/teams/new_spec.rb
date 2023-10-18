require 'rails_helper'

RSpec.describe 'New Team' do 
  describe 'As a visitor' do 
    describe 'When I visit the new team form by clicking a link on the \'New Team\' button' do
      it 'I can create a new team' do

        
        @afc_north = Division.create!({ name: "AFC North", conference: "AFC",sb_five: false })
        @div_id = @afc_north.id

        visit "divisions/#{@div_id}/teams"

        click_link 'New Team'

        # expect(current_path).to eq("/divisions/#{@div_id}/teams/new")

        # fill_in 'division_id', with: @div_id
        fill_in 'name', with: 'Dayton Fliers'
        fill_in 'wins', with: 5
        fill_in 'losses', with: 12
        fill_in 'ties', with: 0
        fill_in 'rank', with: 29
        fill_in 'year_started', with: 1998
        fill_in 'super_bowl', with: false
        
        click_on 'New Team'

        # expect(current_path).to eq("/divisions/#{@div_id}/teams")
        expect(page).to have_content('Dayton Fliers')
        expect(page).to have_content('Wins: 5')
        expect(page).to have_content('Losses: 12')
      end
    end
  end
end 