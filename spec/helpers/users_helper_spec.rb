require 'rails_helper'

RSpec.describe UsersHelper do
  specify "#strip_domain" do
    user = build_stubbed(:user, email: 'custom@example.com')
    expect(helper.strip_domain(user)).to eq('custom')
  end
end