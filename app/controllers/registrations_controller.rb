class RegistrationsController < ApplicationController
    def new
        @user = User.new 
    end

    def create
        @user = User.create(sign_up_params)
        redirect_to posts_url
    end


    private

    def sign_up_params
        params.require(:user).permit(:email, :user_handle, :password, :password_confirmation)
    end
end