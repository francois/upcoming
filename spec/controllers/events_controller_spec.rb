require 'spec_helper'

describe EventsController do

  describe "GET 'index'" do
    it "should be successful" do
      Event.should_receive(:all).and_return([ mock_model(Event) ])

      get 'index'
      response.should be_success
    end
  end

  describe "POST :create" do
    it "should be successful" do
      Event.should_receive(:create!).with("name"     => "Montreal.rb",
                                          "url"      => "http://montrealonrails.com",
                                          "start_at" => "2011-01-01 09:00:00")
      post :create, :event => {
        :name     => "Montreal.rb",
        :url      => "http://montrealonrails.com",
        :start_at => "2011-01-01 09:00:00"}
    end
  end

end
