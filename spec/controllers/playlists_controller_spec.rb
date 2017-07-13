require 'rails_helper'

RSpec.describe PlaylistsController, type: :controller do
  describe 'GET #index' do
    it "assigns all playlists as @playlists and renders the index template" do
      playlist = create(:playlist)

      get(:index)

      expect(assigns(:playlist)).to eq([playlist])
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns the requested playlist as @playlist and renders the show template" do
      playlist = create(:playlist)
      get(:show, params:{:id => playlist.to_param})
      expect(assigns(:playlist)).to eq(playlist)
      expect(response).to render_template("show")
    end
  end
end
