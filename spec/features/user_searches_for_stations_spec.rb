require 'rails_helper'

feature "User can search for altnerative fuel stations" do
  scenario "searches within search form" do
    # VCR.use_cassette('search-homepage') do
      visit "/"

      # save_and_open_page
      fill_in :q, with: "80203"
      click_on "Locate"

      expect(current_path).to eq('/search')
      expect(page).to have_css('.station')

      within(first('.station')) do
        expect(page).to have_css('.name')
        expect(page).to have_css('.address')
        expect(page).to have_css('.fuel_types')
        expect(page).to have_css('.distance')
        expect(page).to have_css('.access_times')
      end
    # end
  end
end
