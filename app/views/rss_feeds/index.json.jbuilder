json.array!(@rss_feeds) do |rss_feed|
  json.extract! rss_feed, :id, :title, :feed_url
  json.url rss_feed_url(rss_feed, format: :json)
end
