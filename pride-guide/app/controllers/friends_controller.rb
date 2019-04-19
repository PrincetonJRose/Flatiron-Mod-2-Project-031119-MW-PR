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

    def remove
        @user = User.find(params[:id])
        @friends = Friend.where(friend_id: @user.id, friender_id: current_user.id)
        if @friends.present?
            Friend.destroy(@friends[0].id)
        else
            @friends = Friend.where(friend_id: current_user.id, friender_id: @user.id)
            Friend.destroy(@friends[0].id)
        end
        flash[:message] = "You removed #{@user.username} from your friend list."
        redirect_to user_path(current_user)
    end
end