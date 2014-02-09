class RssFeedParser

  def initialize
  end

  # fetch entries from given feeds
  def fetch_entries(feed_urls, sort_order = "DESC")
    feeds = Feedzirra::Feed.fetch_and_parse(feed_urls)
    # Not doing feed validation here. Assuming all feeds will return entries
    entries = feeds.values.collect(&:entries)
    entries.flatten!
    sort(entries, sort_order)
  end

  # Sort given enties based on published date
  def sort(entries, order)
    if order == "DESC"
      entries.sort {|a, b| b.published <=> a.published }
    else
      entries.sort {|a, b| a.published <=> b.published } 
    end
  end
end
