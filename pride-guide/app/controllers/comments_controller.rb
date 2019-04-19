class CommentsController < ApplicationController

def create 

    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to user_path(@comment.post.user)
end

private 

def comment_params 
    params.require(:comment).permit(:content, :post_id)
end

end