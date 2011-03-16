require 'spec_helper'

describe Registration do
  it { should belong_to(:event)    }
  it { should belong_to(:attendee) }
end
