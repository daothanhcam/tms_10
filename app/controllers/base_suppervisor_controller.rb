class BaseSuppervisorController < ApplicationController
  before_filter :require_suppervisor!

  private
  def require_suppervisor!
    return redirect_to root_path unless current_user && current_user.suppervisor?
  end

end