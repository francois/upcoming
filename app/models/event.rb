class Event < ActiveRecord::Base
  has_many :attendees
end
