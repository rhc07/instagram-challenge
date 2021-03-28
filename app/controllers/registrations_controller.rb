class RegistrationsController < ApplicationController
    def new
        @user = User.new 
    end

    def create
        @user = User.create(sign_up_params)
        if @user.save
            redirect_to posts_url, notice: "Successfully created an account"
        else 
            render :new 
        end 
    end

    def posts
        @current_user = sign_up_params.user_handle
    end


    private

    def sign_up_params
        params.require(:user).permit(:email, :user_handle, :password, :password_confirmation)
    end
end