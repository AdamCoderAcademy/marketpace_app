class ReviewsController < ApplicationController
    def new
        @review = Review.new
        @review.product_id = params[:product]
    end
    def create
        product = Product.find(params[:review][:product_id])
        @review = product.reviews.new
        @review.user_id = current_user.id
        @review.rating = params[:review][:rating]
        @review.comment = params[:review][:comment]
        if @review.save
          redirect_to product_path(product)
        else
          flash[:alert] = "Ooops. There was a problem creating the review."
        end
    end
end
