class RegistrationsController < ApplicationController
    def new
        @user = User.new 
    end

    def create
        @user = User.create(sign_up_params)
        if @user.save
            redirect_to root_path, notice: "Successfully created an account"
        else 
            flash[:alert] = "Something went wrong, please try again!"
            render :new 
        end 
    end

    # def posts
    #     @current_user = User.find(params[:id])
    # end


    private

    def sign_up_params
        params.require(:user).permit(:email, :user_handle, :password, :password_confirmation)
    end
end