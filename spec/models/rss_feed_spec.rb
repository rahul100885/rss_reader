require 'spec_helper'

describe RssFeed do
  it { should validate_presence_of(:feed_url) }

  it "should not save valid rss feed" do 
    feed = RssFeed.create(feed_url: "http://not-exists.com/")
    feed.errors.should have_key(:feed_url)
  end


end
