class UsersController < ApplicationController
    before_action :authorize!, except: [:index, :show]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Welcome to Pride Guide!!!  ^_^"
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
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
        params.require(:user).permit(:username, :birthdate, :bio, :state_id, :city, :first_name, :middle_initial, :last_name, :email, :password, :password_confirmation, :password_digest, pronoun_ids: [], gender_ids: [], orientation_ids: [])
    end

end
