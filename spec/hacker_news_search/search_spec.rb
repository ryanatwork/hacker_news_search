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
end