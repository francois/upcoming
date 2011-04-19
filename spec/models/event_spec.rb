require 'spec_helper'

describe Event do
  it "should build and return a new attendee on demand" do
    subject.build_attendee.should be_kind_of(Attendee)
  end
end
