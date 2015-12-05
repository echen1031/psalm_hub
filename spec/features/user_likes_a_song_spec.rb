require 'spec_helper'

feature "User likes a song" do
  let(:user) { create(:user) }
  
  scenario "successfully" do
    song = create(:song)
    login(user)
    visit root_path
    click_link "Like"
    expect(Like.all.size).to eq 1
  end
end
