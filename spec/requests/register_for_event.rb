require "spec_helper"

feature "Registering for events" do
  background do
    @event = Event.create!(:name => "Montreal.rb", :start_at => 10.days.from_now.at_midnight + 18.hours, :url => "http://montrealonrails.com/")
  end

  scenario "when we have never seen this person before, and JavaScript is turned off" do
    visit "/"

    page.should link_to(new_event_registration_path(@event), :text => "Register")
    within(:css, "#event_#{@event.id}") do
      click_link 'Register'
    end

    page.should have_content("Register for Montreal.rb (#{@event.start_at.to_s(:short)})")
  end
end
