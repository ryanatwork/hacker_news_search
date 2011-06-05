require 'hacker_news_search/client'

module HackerNewsSearch
  # Alias for HackerNewsSearch::Client.new
  #
  # @return [HackerNewsSearch::Client]
  def self.new
    HackerNewsSearch::Client.new
  end

  # Delegate to HackerNewsSearch::Client
  def self.method_missing(method, *args, &block)
    return super unless new.respond_to?(method)
    new.send(method, *args, &block)
  end

  def self.respond_to?(method, include_private=false)
    new.respond_to?(method, include_private) || super(method, include_private)
  end
end