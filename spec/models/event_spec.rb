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

  context "given a person with the same email address exists" do
    it "should reuse the existing person" do
      subject.save!

      Person.create!(:name => "francois", :email => "francois@teksol.info")
      subject.create_attendee(:name => "francois", :email => "francois@teksol.info")
      Person.count.should == 1
    end
  end
end
