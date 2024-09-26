class ReviewsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new(review_params)

    if @review.save
      redirect_to book_path(@book), notice: "Review submitted successfully"
    else
      render :new
    end
  end

  def destroy
  end

  private

  def review_params
    params.permit(:rating, :content, :book_id)
  end
end
