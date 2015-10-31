class WelcomeController < ApplicationController
  def index
    offset = rand(Song.count)
    @random_song = Song.offset(offset).first
  end

  def about
  end
end
