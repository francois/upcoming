class Registration < ActiveRecord::Base
  belongs_to :event
  belongs_to :attendee
end
