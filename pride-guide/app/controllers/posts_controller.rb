class PostsController < ApplicationController

    def create
        @post = Post.new(post_params)
        @post.user = current_user
        @post.save
        redirect_to user_path(current_user)
    end

    private 

    def post_params
        params.require(:post).permit(:title, :content)
    end
end