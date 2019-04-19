class PostsController < ApplicationController
    def create
        @post = Post.new(post_params)
        @post.user = current_user
        if @post.save
            redirect_to user_path(current_user)
        else
            @errors = "Post did not submit.  =("
        end
    end

    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.update(post_params)
        redirect_to user_path(current_user)
    end


    def destroy 
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to user_path(current_user)
    end

    private

    def post_params
        params.require(:post).permit(:title, :content)
    end
end