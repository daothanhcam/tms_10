class DashboardController < ApplicationController
  def show
    if current_user && current_user.suppervisor?
      redirect_to "/suppervisor"
    else
      redirect_to users_path
    end
  end
end