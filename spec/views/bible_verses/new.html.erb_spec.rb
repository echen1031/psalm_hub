require 'rails_helper'

RSpec.describe "bible_verses/new", :type => :view do
  before(:each) do
    assign(:bible_verse, BibleVerse.new(
      :testament => "MyString",
      :book => "MyString",
      :chapter => 1,
      :verse => 1,
      :content => "MyString",
      :reference => "MyString"
    ))
  end

  it "renders new bible_verse form" do
    render

    assert_select "form[action=?][method=?]", bible_verses_path, "post" do

      assert_select "input#bible_verse_testament[name=?]", "bible_verse[testament]"

      assert_select "input#bible_verse_book[name=?]", "bible_verse[book]"

      assert_select "input#bible_verse_chapter[name=?]", "bible_verse[chapter]"

      assert_select "input#bible_verse_verse[name=?]", "bible_verse[verse]"

      assert_select "input#bible_verse_content[name=?]", "bible_verse[content]"

      assert_select "input#bible_verse_reference[name=?]", "bible_verse[reference]"
    end
  end
end