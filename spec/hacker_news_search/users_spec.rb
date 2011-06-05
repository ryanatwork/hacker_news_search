require 'helper'

describe HackerNewsSearch::Client::Users do

  before do
    @client = HackerNewsSearch::Client.new
  end

  describe ".users" do
      before do
        stub_get("users/sferik").
          to_return(:status => 200, :body => fixture("users.json"))
      end

      it "should return one user" do
        user = @client.users("sferik")
        a_get("users/sferik").should have_been_made
        user.username.should == "sferik"
      end
  end

end