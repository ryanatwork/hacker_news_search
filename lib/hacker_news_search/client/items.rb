module HackerNewsSearch
  class Client
    module Items
      
      # Returns the information of the item from Hacker News Search
      #
      # @param item_id [String] The hacker news item plus the thriftdb_id - must know the thriftDB id
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.hnsearch.com/api
      # @example
      #   HackerNewsSearch.item("2619846-a30f9")
      def item(item_id, options={})
         get("items/#{item_id}", options)
      end
      
    end
  end
end