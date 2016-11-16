class Song < ActiveRecord::Base
  has_many :likes, dependent: :destroy
  belongs_to :user

  def number_of_lines
    if lyrics.present?
      split_lyrics.count
    else
      0
    end
  end

  def display_chords
    if chords.present?
      chords
    else
      ""
    end
  end

  def display_lyrics
    if lyrics.present?
      split_lyrics
    else
      ""
    end
  end

  def split_lyrics
    self.lyrics.split(/\r?\n/)
  end

  def has_audio?
    link.present?
  end
end
