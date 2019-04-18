class ApplicationController < ActionController::Base
    helper_method :current_user

    def search
        if params[:query].present?
            if current_user
                @users = User.where("username LIKE ?", "%#{params[:query]}%")
                @posts = Post.where("title LIKE ?", "%#{params[:query]}%")
            else
                @users = []
                @posts = []
            end
            @resources = Resource.where("name LIKE ?", "%#{params[:query]}%")
            if !params[:query].empty?
                flash[:message] = "Search results for '#{params[:query]}'."
            end
            if @users.size == 0 and @resources.size == 0 and @posts.size == 0
                flash[:message] = "We didn't find any search results that matched '#{params[:query]}'."
            end
        else
            redirect_to home_path
        end
    end

    def current_user
        user_id = session[:user_id]
        if user_id.present?
            User.find(user_id["value"])
        end
    end

    def authorize!
        unless current_user
            @errors = "Login is required to view content"
            redirect_to login_path
        end
    end

end
