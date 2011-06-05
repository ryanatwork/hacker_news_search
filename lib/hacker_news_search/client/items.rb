module HackerNewsSearch
  class Client
    module Items
      def item(item_id, options={})
         get("items/#{item_id}", options)
      end
    end
  end
end