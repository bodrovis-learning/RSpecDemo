require 'rails_helper'

RSpec.feature 'Account interactions' do
  context "registration" do
    scenario "works correctly" do
      visit root_path
      within '#new_user' do
        fill_in 'Name', with: 'test'
        fill_in 'Email', with: 'test@test.ru'
        fill_in 'Password', with: 'test'
        fill_in 'Password confirmation', with: 'test'
        click_button 'Create User'
      end

      expect_flash 'Welcome!'
    end
  end
end