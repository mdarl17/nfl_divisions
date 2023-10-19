RSpec.describe "divisions show page", type: :feature do
  describe "index#show" do
    it "displays one record with the conference and super bowl winner in the past five years boolean attributes" do 
      visit "/divisions/1"
    end
  end
end