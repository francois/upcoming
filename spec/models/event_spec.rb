require 'spec_helper'

describe Event do
  it { should have_many(:registrations) }
  it { should have_many(:attendees)     }
end
