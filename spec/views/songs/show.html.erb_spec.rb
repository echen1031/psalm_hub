require 'rails_helper'

describe "songs/show.html.erb" do
  it "display song details correctly" do
    song = assign(:song, create(:song))
    render
    expect(rendered).to have_content(song.title)
    expect(rendered).to have_content(song.lyrics)
  end
end