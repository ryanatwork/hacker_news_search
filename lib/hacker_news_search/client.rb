require 'hacker_news_search/connection'
require 'hacker_news_search/request'
require 'hacker_news_search/items'
require 'hacker_news_search/users'
require 'hacker_news_search/search'

module HackerNewsSearch
  class Client
    include HackerNewsSearch::Connection
    include HackerNewsSearch::Request
  end
end  