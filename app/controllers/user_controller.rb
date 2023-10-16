class UserController < ApplicationController
  def show
    @user = User.friendly.find(params[:id])
  end

  # def set_user_detail
  #   @user_detail = UserDetail.friendly.find_by_friendly_id(params[:id])
  # end
end
