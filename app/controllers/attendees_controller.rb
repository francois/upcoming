class AttendeesController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    attendee = event.create_attendee(params[:attendee])
    redirect_to event_path(event), :notice => "You registered for #{event.name}"
  end
end
