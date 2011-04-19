class Event < ActiveRecord::Base
  has_many :attendees

  def build_attendee
    attendees.build(:person => Person.new)
  end
end
