require 'helper'

describe HackerNewsSearch::Client::Items do

  before do
    @client = HackerNewsSearch::Client.new
  end

  describe ".items" do

    it "should return items" do
      stub_get("items").
        to_return(:body => fixture("items.json"))
      items = @client.items("")
      items.first.author.login.should == "caboteria"
    end

  end

end