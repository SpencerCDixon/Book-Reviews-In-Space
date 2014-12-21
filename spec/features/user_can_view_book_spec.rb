require 'rails_helper'

feature 'visitor can see a books details in-depth' do

  scenario 'visitor visits books show page' do
    book = FactoryGirl.create(:book)
    visit book_path(book)

    expect(page).to have_content(book.description)
    expect(page).to have_content(book.title)
    expect(page).to have_content(book.URL)
  end
end

