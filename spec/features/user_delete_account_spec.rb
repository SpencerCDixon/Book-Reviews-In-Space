require 'rails_helper'

feature 'user deletes account' do

  scenario 'authenticated user can delete account' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)
    expect(page).to have_content('Signed in successfully')
  end

  scenario 'unathenticated user cannot delete account'
end
