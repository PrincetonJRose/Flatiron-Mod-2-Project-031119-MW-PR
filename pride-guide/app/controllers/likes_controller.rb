class LikesController < ApplicationController
    def create
        @post = Post.find(params["post_id"])
        @user = @post.user
        @like = Like.new(user: current_user, post: @post)
        if @like.save
            redirect_to user_path(@user)
        else
            redirect_to user_path(@user)
        end
    end
end