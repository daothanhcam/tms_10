class DashboardController < ApplicationController
  def show
    if current_user && current_user.suppervisor?
      redirect_to "/suppervisor"
    else
      if current_user
        @attened_courses = current_user.courses.attended_courses
        @attening_course = current_user.courses.attending_courses.first
      end
    end
  end
end