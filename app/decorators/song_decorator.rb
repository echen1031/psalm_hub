class SongDecorator < Draper::Decorator
  delegate_all

  def number_of_lines
    lyrics.split('|').count
  end

  def display_chords
    self.chords.split('|')
  end

  def display_lyrics
    self.lyrics.split("\n")
  end
end
