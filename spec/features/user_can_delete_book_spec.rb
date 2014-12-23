require 'rails_helper'

feature 'User can delete a book' do
  scenario 'successfully' do
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit user_path(user)

    fill_in 'Title', with: 'The seasons of life'
    fill_in 'Description', with: 'The seasons of life'
    fill_in 'Url', with: 'http://www.success.com'

    click_button 'List Book'

    visit root_path

    click_on 'Delete Book'
    expect(page).to_not have_content('The seasons of life')
  end
end
