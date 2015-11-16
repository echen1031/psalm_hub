require 'spec_helper'

RSpec.describe "BibleVerses", :type => :request do
  describe "GET /bible_verses" do
    it "works! (now write some real specs)" do
      get bible_verses_path
      expect(response).to have_http_status(200)
    end
  end
end
