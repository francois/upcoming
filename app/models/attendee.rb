class Attendee < ActiveRecord::Base
  has_many :registrations
  has_many :events, :through => :registrations

  #validate :name, :email, :presence => true
  validates_presence_of :name, :email
end
