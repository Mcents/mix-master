require 'rails_helper'

RSpec.feature "User edits an existing Artist" do
  scenario "they see the page to edit an artist" do
    a1 = Artist.create(name: "Justin Bieber", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit '/artists/1'
    click_on "Edit"
    fill_in "artist_name", with: "Justin Feebler"
    fill_in "artist_image_path", with: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    click_on "Update Artist"

    expect(page).to have_content("Justin Feebler")
  end

end
