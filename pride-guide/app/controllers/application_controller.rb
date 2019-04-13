class ApplicationController < ActionController::Base
    def login
        @user = User.new
        render :login
    end
end
