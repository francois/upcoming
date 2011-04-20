require 'spec_helper'

describe Event do
  it "should build and return a new attendee on demand" do
    subject.build_attendee.should be_kind_of(Attendee)
  end

  context "given no person exists" do
    it "should create an attendee and push the name and email to Person" do
      subject.save!
      subject.create_attendee(:name => "Francois", :email => "francois@teksol.info")
    end
  end
end
