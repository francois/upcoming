require 'spec_helper'

describe Attendee do
  it { should validate_presence_of(:name)  }
  it { should validate_presence_of(:email) }

  it { should have_many(:registrations)    }
  it { should have_many(:events)           }
end
