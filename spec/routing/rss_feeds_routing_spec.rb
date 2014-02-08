require "spec_helper"

describe RssFeedsController do
  describe "routing" do

    it "routes to #index" do
      get("/rss_feeds").should route_to("rss_feeds#index")
    end

    it "routes to #new" do
      get("/rss_feeds/new").should route_to("rss_feeds#new")
    end

    it "routes to #show" do
      get("/rss_feeds/1").should route_to("rss_feeds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rss_feeds/1/edit").should route_to("rss_feeds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rss_feeds").should route_to("rss_feeds#create")
    end

    it "routes to #update" do
      put("/rss_feeds/1").should route_to("rss_feeds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rss_feeds/1").should route_to("rss_feeds#destroy", :id => "1")
    end

  end
end
