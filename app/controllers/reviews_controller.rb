class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def list
     @reviews = Review.all
     render json: @reviews
  end

  def create
      @review = Review.new(review_params)
      if @review.save
        render json: @review
      else
        render json: {status: "error", code: 400, message: "Item cannot be saved at this time"}
      end

  end

  def destroy
    @review ||= Review.find(params[:id])
    @review.destroy
    render json: params[:id]
  end


  private

  def review_params
    params.require(:review).permit(:name, :model, :brand, :storage, :price, :date)
  end


end
