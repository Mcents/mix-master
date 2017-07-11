require 'rails_helper'

RSpec.feature "User vists the Artist Index" do
  scenario "And sees a list of all Artists" do
    a1 = Artist.create(name: "Justin Bieber", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    a2 = Artist.create(name: "Taylor Swift", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    a3 = Artist.create(name: "Ryan Adams", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artists_path
    expect(page).to have_content("Ryan Adams", "Taylor Swift", "Justin Bieber")
  end

  scenario "And all artist have a link" do
    a1 = Artist.create(name: "Justin Bieber", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    a2 = Artist.create(name: "Taylor Swift", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    a3 = Artist.create(name: "Ryan Adams", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artists_path
    click_link('Ryan Adams')
    expect(current_path).to eq('/artists/3')
  end
end
