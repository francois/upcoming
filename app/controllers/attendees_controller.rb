class AttendeesController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    Event.transaction do
      event.create_attendee(params[:attendee])
    end

    redirect_to event_path(event), :notice => "You registered for #{event.name}"
  end
end
