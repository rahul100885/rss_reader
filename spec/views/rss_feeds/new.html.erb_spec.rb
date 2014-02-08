require 'spec_helper'

describe "rss_feeds/new" do
  before(:each) do
    assign(:rss_feed, stub_model(RssFeed,
      :title => "MyString",
      :feed_url => "MyString"
    ).as_new_record)
  end

  it "renders new rss_feed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rss_feeds_path, "post" do
      assert_select "input#rss_feed_title[name=?]", "rss_feed[title]"
      assert_select "input#rss_feed_feed_url[name=?]", "rss_feed[feed_url]"
    end
  end
end
