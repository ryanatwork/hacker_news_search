require 'helper'

describe HackerNewsSearch::Client::Items do

  before do
    @client = HackerNewsSearch::Client.new
  end

  describe ".items" do
    before do
      stub_get("items/2619846-a30f9").
        to_return(:status => 200, :body => fixture("items.json"))
    end
    
    it "should return the correct item" do
      item = @client.item("2619846-a30f9")
      a_get("items/2619846-a30f9").should have_been_made
      item.id.should == 2619846
    end
  end

end