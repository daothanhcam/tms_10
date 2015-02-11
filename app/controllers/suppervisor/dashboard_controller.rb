class Suppervisor::DashboardController < ::BaseSuppervisorController
  def show
    @users = User.all
  end
end