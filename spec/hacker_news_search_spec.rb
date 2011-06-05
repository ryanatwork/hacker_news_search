require 'helper'

describe HackerNewsSearch do
  describe ".new" do
    it "should return a HackerNewsSearch::Client" do
      HackerNewsSearch.new.should be_a HackerNewsSearch::Client
    end
  end
end