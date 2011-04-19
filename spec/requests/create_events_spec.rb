require "spec_helper"

feature "Create Events" do
  scenario "when on the home page" do
    visit "/"
    page.should have_link_to(new_event_path)
  end

  scenario "when creating a new event" do
    visit "events/new"

    page.should have_form_to(events_path)
    within(:css, "form") do
      page.should have_input_for(:name)
      page.should have_input_for(:url)
    end
  end

  scenario "when populating the new events form" do
    visit "events/new"

    fill_in :name, :with => "Montreal.rb"
    fill_in :url, :with => "http://montrealonrails.com/"
    click_button :submit
  end
end
