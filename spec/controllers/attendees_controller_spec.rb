require 'spec_helper'

describe AttendeesController do

  describe "POST 'create'" do
    let :event do
      stub_model(Event, :name => "Montreal Python Joint Event")
    end

    let :attendee do
      stub_model(Attendee)
    end

    it "should build an attendee" do
      Event.stub(:find).and_return( event )
      event.should_receive(:create_attendee).and_return(attendee)
      post :create, :event_id => event.id, :attendee => {:name => "Francois", :email => "francois@teksol.info"}
    end
  end

end
