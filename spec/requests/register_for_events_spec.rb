require "spec_helper"

feature "Register for events" do
  background do
    @event = Event.create!(:name => "Montreal.rb", :url => "http://montrealonrails.com", :start_at => 10.days.from_now.at_midnight + 19.hours)
  end

  attr_reader :event

  scenario "given an existing event, when visiting that event's page, I should have a form to enter my information as an attendee" do
    visit "/events/#{event.to_param}"

    page.should have_form_to(event_attendees_path(event))
    within(:css, "form") do
      page.should have_input_for(:name)
      page.should have_input_for(:email)
    end
  end

end
