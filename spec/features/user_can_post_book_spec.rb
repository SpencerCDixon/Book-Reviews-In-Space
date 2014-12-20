require 'rails_helper'

feature 'auth user can post a new book' do
  scenario 'user lists a book' do
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit user_path(user)

    fill_in 'Title', with: 'The Seasons of Life'
    fill_in 'Description', with: 'a book about life philosophies to be successful'
    fill_in 'Url', with: 'http://www.amazon.com/The-Seasons-Life-Jim-Rohn/dp/0939490005'

    click_button 'List Book'

    visit root_path
    expect(page).to have_content('The Seasons of Life')
  end
end
