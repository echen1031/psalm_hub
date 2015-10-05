require 'rails_helper'

RSpec.describe "bible_verses/show", :type => :view do
  before(:each) do
    @bible_verse = assign(:bible_verse, BibleVerse.create!(
      :testament => "Testament",
      :book => "Book",
      :chapter => 1,
      :verse => 2,
      :content => "Content",
      :reference => "Reference"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Testament/)
    expect(rendered).to match(/Book/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Reference/)
  end
end
