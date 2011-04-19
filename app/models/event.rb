class Event < ActiveRecord::Base
  has_many :attendees

  def build_attendee
    attendees.build
  end
end
