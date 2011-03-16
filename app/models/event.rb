class Event < ActiveRecord::Base
  has_many :registrations
  has_many :attendees, :through => :registrations
end
