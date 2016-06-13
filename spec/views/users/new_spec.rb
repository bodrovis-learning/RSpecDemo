require 'rails_helper'

RSpec.describe 'users/new' do
  it "should present Register page title" do
    assign(:user, User.new)
    render
    expect(rendered).to include("Register")
  end
end