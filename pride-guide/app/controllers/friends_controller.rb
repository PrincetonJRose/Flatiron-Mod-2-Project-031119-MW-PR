class FriendsController < ApplicationController
    def add 
        @user = User.find(params[:id])
        friend = Friend.new(friender_id: current_user.id, friend_id: @user.id)
        if @user.friends.include?(current_user)
            flash[:message] = "You're already friends!!!"
            redirect_to user_path(@user)
        else
            friend.save
            redirect_to user_path(@user)    
        end    
    end
end