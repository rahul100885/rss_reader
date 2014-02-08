require 'spec_helper'

describe "rss_feeds/index" do
  before(:each) do
    assign(:rss_feeds, [
      stub_model(RssFeed,
        :title => "Title",
        :feed_url => "Feed Url"
      ),
      stub_model(RssFeed,
        :title => "Title",
        :feed_url => "Feed Url"
      )
    ])
  end

  it "renders a list of rss_feeds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Feed Url".to_s, :count => 2
  end
end
