require 'rails_helper'

RSpec.feature "User deletes an existing Artist" do
  scenario "they see the page of an artist and delete button" do
      a1 = Artist.create(name: "Justin Bieber", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
      a2 = Artist.create(name: "Taylor Swift", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
      a3 = Artist.create(name: "Ryan Adams", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

      visit '/artists/1'
      expect(Artist.count).to eq(3)
      click_on "Delete"
      expect(Artist.count).to eq(2)
    end

end
