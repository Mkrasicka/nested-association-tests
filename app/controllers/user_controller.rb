class UserController < ApplicationController
  def show
    @user = User.friendly.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      if user.valid_password?(params[:password])
        sign_in user
        # Successful login
      else
        # flash[:alert] = 'Invalid Email or password'
        puts @user.errors.full_messages # Print validation errors to the console
        render 'new'
        # Handle the error as needed
      end
    end
  end

  private
def user_params
  params.require(:user).permit(:email, :password, :password_confirmation)
end

  # def set_user_detail
  #   @user_detail = UserDetail.friendly.find_by_friendly_id(params[:id])
  # end
end
