class HomeController < ApplicationController
  def index
    @books = Book.all.limit(40)
  end
end
