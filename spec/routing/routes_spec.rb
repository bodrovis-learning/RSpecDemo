require 'rails_helper'

RSpec.describe "Routing system" do
  context "users" do
    it "routes /users/new to users#new" do
      expect(get: "/users/new").to route_to(
                                       controller: "users",
                                       action: "new"
                                   )
    end

    it "routes /users/:id/edit to users#new" do
      expect(get: "/users/1/edit").to route_to(
                                       controller: "users",
                                       action: "edit",
                                       id: '1'
                                   )
    end
  end
end