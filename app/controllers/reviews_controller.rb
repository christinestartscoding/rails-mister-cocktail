class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(params.require(:review).permit(:rating))
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    end
  end
end
