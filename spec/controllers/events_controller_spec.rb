require 'spec_helper'

describe EventsController do

  describe "GET 'index'" do
    it "should be successful" do
      Event.should_receive(:all).and_return([ mock_model(Event) ])

      get 'index'
      response.should be_success
    end
  end

end
