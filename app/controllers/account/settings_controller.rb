class Account::SettingsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update]
  layout "account"

  def show
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)

    if @user.update(user_params)
      sign_in(@user, :bypass => true)
      flash[:notice] = "Vos réglages ont été mis à jour."
      redirect_to account_settings_path
    else
      render :show
    end
  end

  private

  def user_params
     params.require(:user).permit(:email, :password, :volunteer)
  end
end
