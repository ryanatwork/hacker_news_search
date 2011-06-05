require 'helper'

describe HackerNewsSearch::Client::Search do

  before do
    @client = HackerNewsSearch::Client.new
  end

  describe ".search" do
      context "with item search" do
        before do
          stub_get("items/_search?q=sferik").
            to_return(:status => 200, :body => fixture("items_search.json"))
        end

        it "should fetch all items matching the search criteria" do
          search = @client.search("items", {:q => "sferik"})
          a_get("items/_search?q=sferik").should have_been_made
          search.hits.should == 13
        end
      end
  end
  
  describe ".hotness" do
    before do
      stub_get("items/_search?limit=30&sortby=product(points,pow(2,div(div(ms(create_ts,NOW),3600000),72)))%20desc").
        to_return(:status => 200, :body => fixture("hotness.json"))
    end
    
    it "should return the current hot stories on hacker news" do
      hot = @client.hotness
      a_get("items/_search?limit=30&sortby=product(points,pow(2,div(div(ms(create_ts,NOW),3600000),72)))%20desc").should_have_been_made
      hot.hits == 2428061 
    end
  end  
end