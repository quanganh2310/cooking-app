class AccountActivationsController < ApplicationController
    def edit
        # user = User.find_by(email: params[:email])
        # if user && !user.activated? && user.authenticated?(:activation, params[:id])
        #     user.activate
        #     log_in user
        #     flash[:success] = "Account activated!"
        #     redirect_to user
        # else
        #     flash[:danger] = "Invalid activation link"
        #     redirect_to root_url
        # end
      @user = User.find_by confirm_token: params[:id]
      if @user
        @user.update confirm_token: nil, confirm_at: Time.now, activated: 1
        redirect_to signup_success_path
      else
        flash[:danger] = "Invalid activation link"
        redirect_to signup_fail_path
      end
    end
end
