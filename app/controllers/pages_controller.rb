class PagesController < ApplicationController
  def show
    case params[:page]
    when "home"
      @events = Event.all
      render :action => "home"
    end
  end
end
