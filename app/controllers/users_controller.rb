class UsersController < Users::ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to messages_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :email)
  end
end