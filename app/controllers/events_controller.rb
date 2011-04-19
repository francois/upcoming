class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create!(params[:event])
    redirect_to root_path
  end

  def show
    @event = Event.find(params[:id])
    @attendee = @event.build_attendee
  end
end
