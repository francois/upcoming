class Event < ActiveRecord::Base
  has_many :attendees

  def build_attendee
    attendees.build(:person => Person.new)
  end

  def create_attendee(attrs)
    person = Person.find_or_create_by_email(attrs[:email], attrs)
    attendees.create!(:person => person)
  end
end
