require 'hacker_news_search/connection'
require 'hacker_news_search/request'

module HackerNewsSearch
  class Client
    include HackerNewsSearch::Connection
    include HackerNewsSearch::Request
  end
end  