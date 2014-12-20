require 'rails_helper'

feature 'user deletes account' do

  scenario 'authenticated user can delete account' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit user_path(user)
    click_link 'Delete Account'

    expect(page).to have_content('Account deleted.')
  end

  scenario 'unathenticated user cannot delete account'
end
