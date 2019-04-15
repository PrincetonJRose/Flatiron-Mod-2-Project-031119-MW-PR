class ReviewsController < ApplicationController
    def create
        @review = Review.new(review_params)
        @review.user = current_user
        if @review.save
            redirect_to resource_path(@review.resource)
        else
            @errors = "Review was unable to be submitted. Please try again."
        end
    end

    private

    def review_params
        params.require(:review).permit(:resource_id, :user_id, :rating, :content)
    end
end