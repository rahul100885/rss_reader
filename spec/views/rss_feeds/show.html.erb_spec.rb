require 'spec_helper'

describe "rss_feeds/show" do
  before(:each) do
    @rss_feed = assign(:rss_feed, stub_model(RssFeed,
      :title => "Title",
      :feed_url => "Feed Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Feed Url/)
  end
end
