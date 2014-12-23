class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book_id = params[:book_id]
    @review.user_id = current_user.id

    if @review.save
      redirect_to @book
    else
      render 'books#show'
    end
  end

  private
  def review_params
    params.require(:review).permit(:description)
  end
end
