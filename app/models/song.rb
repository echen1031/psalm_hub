class Song < ActiveRecord::Base
  def number_of_lines
    lyrics.split('|').count
  end

  def display_chords
    self.chords.split('|')
  end

  def display_lyrics
    self.lyrics.split('|')
  end
end
