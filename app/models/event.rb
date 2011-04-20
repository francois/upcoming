class Event < ActiveRecord::Base
  has_many :attendees

  def build_attendee
    attendees.build(:person => Person.new)
  end

  def create_attendee(attrs)
    attendees.create!(:person => Person.new(attrs))
  end
end
