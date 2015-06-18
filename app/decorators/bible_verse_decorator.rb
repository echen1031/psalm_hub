class BibleVerseDecorator < Draper::Decorator
  delegate_all

  def reference
    book+" "+chapter.to_s+":"+verse.to_s
  end
end
