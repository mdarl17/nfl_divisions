require 'rails_helper'

RSpec.describe 'New Division' do 
  describe 'As a visitor' do 
    describe 'When I visit the new division form by clicking a link on the \'New Division\' index\'' do
      it 'I can create a new division' do
        visit 'divisions'

        click_link 'New Division'

        expect(current_path).to eq('/divisions/new')

        fill_in 'name', with: 'National League'
        fill_in 'conference', with: 'WFC'
        fill_in 'sb_five', with: 'false'
        click_on 'New Division'

        expect(current_path).to eq('/divisions')
        expect(page).to have_content('National League')
        expect(page).to have_content('WFC')
        expect(page).to have_content('false')
      end
    end
  end
end 