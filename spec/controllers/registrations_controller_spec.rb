require 'spec_helper'

describe RegistrationsController do
  context "Registering with no prior cookie" do
    let :event do
      Event.create!(:name => "PyCon", :url => "http://pycon.org/", :start_at => 3.months.from_now)
    end

    before(:each) do
      get :new, :event_id => event
    end

    it { should render_template("registrations/new") }
    it { should assign_to(:registration)             }
    it { should assign_to(:event)                    }
  end
end
