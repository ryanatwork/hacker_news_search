module HackerNewsSearch
  class Client
    module Users
      
      # Returns the information about a user
      #
      # @param user_name [String] user name from Hacker News
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://www.hnsearch.com/api
      # @example
      #   HackerNewsSearch.users("sferik")
      def users(user_name, options={})
        get("users/#{user_name}", options)
      end  
    end
  end
end