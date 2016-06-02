require "rails_helper"

RSpec.describe UsersController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the users into @users" do
      users = create_pair(:user)
      get :index

      expect(assigns(:users)).to match_array(users)
    end
  end
end