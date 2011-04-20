class AttendeesController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    redirect_to event_path(event), :notice => "You registered for #{event.name}"
  end
end
