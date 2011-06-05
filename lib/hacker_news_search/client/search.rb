module HackerNewsSearch
  class Client
    module Search
      
      # Returns the information based on the search criteria
      #
      # @param collection [String] collection is either -  users or items 
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.hnsearch.com/api
      # @example
      #   HackerNewsSearch.search("users" {:q => "sferik"})
      def search(collection, options={})
        get("#{collection}/_search", options)
      end
    end
  end
end