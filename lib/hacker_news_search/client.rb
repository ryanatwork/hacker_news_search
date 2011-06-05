require 'hacker_news_search/client/connection'
require 'hacker_news_search/client/request'
require 'hacker_news_search/client/items'
require 'hacker_news_search/client/users'
require 'hacker_news_search/client/search'

module HackerNewsSearch
  class Client
    include HackerNewsSearch::Client::Connection
    
    include HackerNewsSearch::Client::Request
    include HackerNewsSearch::Client::Users
  end
end  