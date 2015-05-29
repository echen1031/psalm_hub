json.array!(@bible_verses) do |bible_verse|
  json.extract! bible_verse, :id, :testament, :book, :chapter, :verse, :content, :reference
  json.url bible_verse_url(bible_verse, format: :json)
end
