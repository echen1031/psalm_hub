puts "seeding songs..."
Song.delete_all
Song.create!(
  [
    { id: 1,
      title: "I am the living bread",
      lyrics: "I am the living bread, which came down out of heaven",
      chords: "G C Em A",
      link: "http://s3.amazonaws.com/psalmhubeast/I_Am%20The%20Living%20Bread.mp3" }
  ]
)

