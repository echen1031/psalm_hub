require 'spec_helper'

RSpec.describe "bible_verses/index", :type => :view do
  before(:each) do
    assign(:bible_verses, [
      BibleVerse.create!(
        :testament => "Testament",
        :book => "Book",
        :chapter => 1,
        :verse => 2,
        :content => "Content",
        :reference => "Reference"
      ),
      BibleVerse.create!(
        :testament => "Testament",
        :book => "Book",
        :chapter => 1,
        :verse => 2,
        :content => "Content",
        :reference => "Reference"
      )
    ])
  end

  it "renders a list of bible_verses" do
    render
    assert_select "tr>td", :text => "Testament".to_s, :count => 2
    assert_select "tr>td", :text => "Book".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
  end
end
