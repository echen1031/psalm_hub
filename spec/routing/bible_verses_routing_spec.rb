require "rails_helper"

RSpec.describe BibleVersesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bible_verses").to route_to("bible_verses#index")
    end

    it "routes to #new" do
      expect(:get => "/bible_verses/new").to route_to("bible_verses#new")
    end

    it "routes to #show" do
      expect(:get => "/bible_verses/1").to route_to("bible_verses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bible_verses/1/edit").to route_to("bible_verses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bible_verses").to route_to("bible_verses#create")
    end

    it "routes to #update" do
      expect(:put => "/bible_verses/1").to route_to("bible_verses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bible_verses/1").to route_to("bible_verses#destroy", :id => "1")
    end

  end
end
