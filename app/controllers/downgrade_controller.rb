class DowngradeController < ApplicationController
  def new
  end

  def create
    current_user.update_attribute(:role, 0)

    flash[:notice] = "You have successfully downgraded your account."
    redirect_to root_path
  end
end