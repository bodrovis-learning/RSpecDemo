require 'rails_helper'

RSpec.describe 'Posts creation' do
  it "adds posts", js: true do
    visit posts_path

    within '#new_post' do
      fill_in 'Title', with: 'comment title'
      fill_in 'Body', with: 'comment body'
      click_button 'Create Post'
    end

    within('#posts') { expect(page).to have_content('comment body') ; expect(page).to have_content('comment title') }
  end
end