class UsersController < ApplicationController
    before_action :authorize!, except: [:index, :show, :new, :create]

    def index
        if params[:query]
            @users = User.where("username LIKE ?", "%#{params[:query]}%")
            if !params[:query].empty?
                flash[:message] = "Search results for '#{params[:query]}'."
            end
            if @users.size == 0
                flash[:message] = "We didn't find any search results that matched what you typed in."
                @users = User.all
            end
        else
            @users = User.all
        end
    end

    def show
        @user = User.find(params[:id])
        @posts = @user.posts
        @post = Post.new
        if current_user
            @comment = current_user.comments.build
        end       
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Welcome to Pride Guide!!!  ^_^"
            redirect_to login_path
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
        if current_user !=  @user
            redirect_to user_path(@user)
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :birthdate, :bio, :state_id, :city, :first_name, :middle_initial, :last_name, :email, :password, :password_confirmation, :password_digest, pronoun_ids: [], gender_ids: [], orientation_ids: [], post:[:title, :content])
    end

end
