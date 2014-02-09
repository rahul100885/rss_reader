class FeedValidator < ActiveModel::EachValidator
  # TODO unit spec are pending
  # also find another way to do validation since it is tightly integrated with Feedzirra gem and its internals
  def validate_each(record, attribute, value)
    record.errors.add(attribute, (options[:message] || " is invalid")) if
      Feedzirra::Feed.fetch_and_parse(value).class.parent != Feedzirra::Parser
  end
end
