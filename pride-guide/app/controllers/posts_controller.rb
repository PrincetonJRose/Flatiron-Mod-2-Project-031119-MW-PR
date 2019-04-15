class PostController < ApplicationController
    def create
        @post = Post.new(post_params)
        @post.user = current_user
        if @post.save
            redirect_to user_path(current_user)
        else
            @errors = "Post did not submit.  =("
        end
        redirect_to user_path(current_user)
    end

    private

    def post_params
        params.require(:post).permit(:title, :content)
    end
end