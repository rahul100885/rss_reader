class RssFeed < ActiveRecord::Base
  validates :feed_url, presence: true, feed: true

  before_save :fetch_title

  # fetches title of url by parsing feed using Feedzirra
  def fetch_title
    feed = Feedzirra::Feed.fetch_and_parse(self.feed_url)
    self.title = feed.title
  end
end
