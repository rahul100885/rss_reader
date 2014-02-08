require 'spec_helper'

describe "rss_feeds/edit" do
  before(:each) do
    @rss_feed = assign(:rss_feed, stub_model(RssFeed,
      :title => "MyString",
      :feed_url => "MyString"
    ))
  end

  it "renders the edit rss_feed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rss_feed_path(@rss_feed), "post" do
      assert_select "input#rss_feed_title[name=?]", "rss_feed[title]"
      assert_select "input#rss_feed_feed_url[name=?]", "rss_feed[feed_url]"
    end
  end
end
