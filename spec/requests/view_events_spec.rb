require "spec_helper"

feature "View Events" do
  scenario "when there are no events" do
    visit "/"

    page.should_not have_css(".upcoming.events")
  end

  scenario "when there is one event" do
    Event.create!(:name => "Montreal.rb", :start_at => "2011-09-13 18:30-0400", :url => "http://montrealonrails.com/")

    visit "/"
    page.should have_css(".upcoming.events")
    within(:css, ".upcoming.events") do
      page.should have_css("li", :text => "Montreal.rb", :count => 1)
      page.should link_to("http://montrealonrails.com/")
    end
  end

  scenario "when there are many events" do
    Event.create!(:name => "Montreal.rb", :start_at => "2011-09-13 18:30-0400", :url => "http://montrealonrails.com/")
    Event.create!(:name => "PyMtl", :start_at => "2011-09-14 20:00-0400", :url => "http://pymontreal.com/")

    visit "/"
    page.should have_css(".upcoming.events")
    within(:css, ".upcoming.events") do
      page.should have_css("li", :text => "Montreal.rb", :count => 1)
      page.should link_to("http://montrealonrails.com/")

      page.should have_css("li", :text => "PyMtl", :count => 1)
      page.should link_to("http://pymontreal.com/")
    end
  end
end
