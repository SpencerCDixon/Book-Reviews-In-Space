require 'rails_helper'

feature 'user registers' do

  scenario 'provide valid registration information' do
    visit new_user_registration_path

    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password', match: :prefer_exact
    fill_in 'Password confirmation', with: 'password', match: :prefer_exact 

    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully')
  end
  scenario 'provide invalid registration information'
end

