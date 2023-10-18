RSpec.describe "divisions show page", type: :feature do
  it "has a link that can sort divisions alphabetically" do
    let!(afc_north) { Division.create!(name: "AFC North", conference: "AFC", sb_five: true) }
    # @nfc_south = Division.create({ name: "NFC North", conference: "NFC", sb_five: false })
  end

    visit "/divisions/#{@afc_north.id}"
    expect(page).to have_content("AFC North")
end