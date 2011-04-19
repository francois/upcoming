require "spec_helper"

feature "Create Events" do
  scenario "when on the home page" do
    visit "/"
    page.should have_link_to(new_event_path)
  end
end
