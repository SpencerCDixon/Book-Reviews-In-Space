require 'rails_helper'

feature 'visitor can see a books details in-depth' do

  scenario 'visitor visits books show page' do
    book = FactoryGirl.create(:book)

    visit root_path

    click_link book.title

    expect(page).to have_content(book.description)
  end
end

