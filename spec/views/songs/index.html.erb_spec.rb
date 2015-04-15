require 'rails_helper'

describe "songs/index.html.erb" do
  it "list songs correctly" do
    songs = assign(:songs, create_list(:song, 2))
    song = songs.first
    render
    expect(rendered).to have_content(song.title)
  end
end
