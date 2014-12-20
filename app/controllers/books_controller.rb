class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    binding.pry
    @book.user_id = current_user.id

    if @book.save
      redirect_to root_path
    else
      render 'users#show'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :description, :URL)
  end
end

