class Song < ActiveRecord::Base
  def number_of_lines
    if lyrics.present?
      lyrics.split('|').count
    else
      0
    end
  end

  def display_chords
    if chords.present?
      chords.split('|')
    else
      ""
    end
  end

  def display_lyrics
    if lyrics.present?
      self.lyrics.split('|')
    else
      ""
    end
  end
end
