class BibleVerseDecorator < Draper::Decorator
  delegate :current_page, :per_page, :offset, :total_entries, :total_pages, :book, :chapter, :verse, :content

  def reference
    book+" "+chapter.to_s+":"+verse.to_s
  end

  def self.decorate_each(objects)
    objects.each do |object|
      yield decorate(object)
    end
  end
end
