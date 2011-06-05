require 'helper'

describe HackerNewsSearch::Client::Users do

  before do
    @client = HackerNewsSearch::Client.new
  end

  describe ".users" do

    it "should return a single user" do
      stub_get("users").
        to_return(:body => fixture("users.json"))
      users = @client.users("sferik")
      users.first.username.should == "sferik"
    end

  end

end