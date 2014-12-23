require 'rails_helper'

feature 'User can delete a book' do
  scenario 'successfully' do
    user = FactoryGirl.create(:user)
    book = FactoryGirl.create(:book)
    sign_in_as(user)

    visit root_path
    click_on 'Delete Book'
    expect(page).to_not have_content(book.title)
  end
end
