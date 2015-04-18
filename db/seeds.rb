puts "seeding songs..."
Song.delete_all
Song.create!(
  [
    {
      id: 1,
      title: "I am the living bread",

      lyrics: "I am the living bread, which came down out of heaven;|
      If anyone, if anyone eats of this bread he shall live forever;|
      And the bread (and the bread)|
      Which I will (which I)|
      Will give is my flesh|
      given for (given for)|
      for the life (for the)|
      life of the world.|
      I am the living bread, which came down out of heaven;|
      If anyone, if anyone eats of this bread he shall live forever.",

      chords: "G C Em D G C Em D|
      G C Em D G C Em D|
      Em|
      C|
      G D|
      Em|
      C|
      G D|
      G C Em D G C Em D|
      G C Em D G C Em D|",

      link: "http://s3.amazonaws.com/psalmhubeast/I_Am%20The%20Living%20Bread.mp3"
    }
  ]
)


