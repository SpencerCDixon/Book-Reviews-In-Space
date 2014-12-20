require 'rails_helper'

feature 'auth user can update profile info to become astronaut' do
  let(:user) { FactoryGirl.create(:user) }

  scenario 'update role to astronaut' do
    sign_in_as(user)
    visit user_path(user)

    select 'Astronaut', from: 'Role'

    click_button 'Update'

    expect(page).to have_content('Role is now Astronaut')
  end

  scenario 'update role to member' do
    sign_in_as(user)
    visit user_path(user)

    select 'Member', from: 'Role'
    click_button 'Update'

    expect(page).to have_content('Role is now Member')
  end

  scenario 'unauth user cannot update role' do
    visit user_path(user)

    expect(page).to_not have_content("Update")
  end
end

