require 'spec_helper'

describe PagesController do
  it "renders the page named in :page" do
    get :show, :page => "home"
    response.should render_template("pages/home")
  end
end
