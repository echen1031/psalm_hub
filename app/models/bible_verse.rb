class BibleVerse < ActiveRecord::Base
  TESTAMENTS = ['new', 'old']
  EN_BOOKS = ['Genesis', 'Exodus', 'Leviticus', 'Numbers', 'Deuteronomy',
              'Joshua', 'Judges', 'Ruth', '1 Samuel', '2 Samuel', '1 Kings', '2 Kings', '1 Chronicles', '2 Chronicles',
              'Ezra', 'Nehemiah', 'Judith', 'Esther', 'Job', 'Psalms', 'Proverbs', 'Ecclesiastes', 'Song of Songs',
              'Isaiah', 'Jeremiah', 'Lamentations', 'Ezekiel', 'Daniel',
              'Hosea', 'Joel', 'Amos', 'Obadiah', 'Micah', 'Nahum', 'Habakkuk', 'Zephaniah', 'Haggai', 'Zechariah', 'Malachi',
              'Matthew', 'Mark', 'Luke', 'John', 'Acts',
              'Romans', '1 Corinthians', '2 Corinthians', 'Galatians', 'Ephesians', 'Philippians', 'Colossians',
              '1 Thessalonians', '2 Thessalonians', '1 Timothy', '2 Timothy',
              'Titus', 'Philemon', 'Hebrews', 'James',  '1 Peter', '2 Peter', '1 John', '2 John', '3 John', 'Jude',
              'Revelation']


  validates_presence_of :content
  validates_numericality_of :chapter_num, :verse_num, :book_num
  validates :testament, inclusion: { in: TESTAMENTS }
  validates :book, inclusion: { in: EN_BOOKS }
  
  before_validation :set_book
end
