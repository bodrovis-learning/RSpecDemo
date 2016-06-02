require "rails_helper"

RSpec.describe Post do
  it "belongs to user" do
    post = build_stubbed(:post)
    expect(post.user.name).to eq('Test')
  end
end