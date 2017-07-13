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

  describe "GET #new" do
    it "assigns a new playlist as @playlist" do
      get(:new)

      expect(assigns(:playlist)).to be_a_new(Playlist)
    end
  end

  describe "GET #edit" do
    it "assigns the requested playlist as @playlist" do
      playlist = create(:playlist)
      get(:edit, params: {id: playlist.id})
      expect(assigns(:playlist)).to eq(playlist)
    end
  end

  describe "POST #create" do
   context "with valid params" do
     it "creates a new artist" do
       expect {
         post :create, params:{:playlist => attributes_for(:playlist)}
       }.to change(Playlist, :count).by(1)
     end

     it "assigns a newly created artist as @artist" do
       post :create, params:{:playlist => attributes_for(:playlist)}
       expect(assigns(:playlist)).to be_a(Playlist)
       expect(assigns(:playlist)).to be_persisted
     end

     it "redirects to the created artist" do
       post :create, params:{:playlist => attributes_for(:playlist)}
       expect(response).to redirect_to(Playlist.last)
      end
    end
  end
end
