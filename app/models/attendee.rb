class Attendee < ActiveRecord::Base
  belongs_to :person
  belongs_to :event

  delegate :name, :email, :to => :person
end
