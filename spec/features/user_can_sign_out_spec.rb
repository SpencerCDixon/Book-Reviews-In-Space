require 'rails_helper'

feature 'auth user can sign out' do
  scenario 'user signs out' do
    FactoryGirl.build(:user)
    visit root_path

    click_link "Sign Out"
    expect(page).to have_content("Signed out successfully.")
  end
end
