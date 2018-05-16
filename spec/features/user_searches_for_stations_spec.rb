require 'rails_helper'

feature "User can search for altnerative fuel stations" do
  scenario "searches within search form" do

    # stub_request(:get, "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?location=80203&radius=6&limit=10&api_key=#{ENV['NREL_API_KEY']}&format=JSON").
    #      with(
    #        headers: {
    #    	  'Accept'=>'*/*',
    #    	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    #    	  'User-Agent'=>'Faraday v0.15.1'
    #        }).
    #      to_return(status: 200, body: '/', headers: {})
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
  end
end
