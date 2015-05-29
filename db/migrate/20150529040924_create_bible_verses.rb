class CreateBibleVerses < ActiveRecord::Migration
  def change
    create_table :bible_verses do |t|
      t.string :testament
      t.string :book
      t.integer :chapter
      t.integer :verse
      t.string :content
      t.string :reference

      t.timestamps
    end
  end
end
