class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id

    if @book.save
      redirect_to root_path
    else
      render 'users#show'
    end
  end

  def show
    @book = Book.find(params[:id])
    @reviews = Review.all.limit(10)
    @review = Review.new
  end

  def destroy
    @book = Book.find(params[:book_id])
    @book.destroy
    redirect_to root_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :description, :URL)
  end
end

