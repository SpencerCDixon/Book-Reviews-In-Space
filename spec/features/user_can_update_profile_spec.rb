require 'rails_helper'

feature 'auth user can update profile info to become astronaut' do

  scenario 'auth user can update role' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)
    visit user_path(user)

    fill_in 'Role', with: 'Astronaut'

    click_button 'Update'

    expect(page).to have_content('Astronaut')
  end

end

