module HackerNewsSearch
  class Client
    module Search
      def search(collection, options={})
        get("#{collection}/_search", options)
      end
    end
  end
end