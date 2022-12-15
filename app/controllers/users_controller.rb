class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render partial: "shared/modal", status: :unprocessable_entity, locals: { user: @user }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
