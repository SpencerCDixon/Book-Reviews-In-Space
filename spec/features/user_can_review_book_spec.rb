require 'rails_helper'

feature 'auth user can review book' do
  scenario 'review book with valid information' do
    user = FactoryGirl.create(:user)
    book = FactoryGirl.create(:book)
    sign_in_as(user)

    visit book_path(book)

    fill_in 'Description', with: 'This was one of the best books ive ever read!!!!! I hope this is 50 characters long'

    click_button 'Review book'
    expect(page).to have_content('This was one of the best books ive ever read!!!!! I hope this is 50 characters long') 
  end
end
