require "rails_helper"

RSpec.describe User do
  #let(:user) { User.new({name: 'Test', email: 'test@example.ru', password_digest: '123'}) }

  context "posts" do
    it "can contain posts" do
      user = build_stubbed(:user_with_posts, posts_count: 7)
      expect(user.posts.count).to eq(7)
    end
  end

  context "validates" do
    it "name is required" do
      user = build(:user, name: nil)
      expect(user).not_to be_valid
    end

    it "email is required" do
      user = build(:user, email: nil)
      expect(user).not_to be_valid
    end

    it "email is correct" do
      user = build(:user_with_incorrect_email)
      expect(user).not_to be_valid
    end

    it "password_digest is required" do
      user = build(:user, password_digest: nil)
      expect(user).not_to be_valid
    end
  end

  it "is admin" do
    user = build(:admin_user)
    expect(user.admin).to eq(true)
  end # red green refactor
end