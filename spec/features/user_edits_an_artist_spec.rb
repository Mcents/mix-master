require 'rails_helper'

RSpec.feature "User edits an existing Artist" do
  scenario "they see the page to edit an artist" do
    a1 = Artist.create(name: "Justin Bieber", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path
    click_on "Edit"


  end

end
