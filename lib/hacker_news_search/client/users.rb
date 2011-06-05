module HackerNewsSearch
  class Client
    module Users
      def users(user_name, options={})
        get("users/#{user_name}", options)
      end
      
    end
  end
end