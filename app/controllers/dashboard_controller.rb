class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @appointments = Appointment.all
  end

end
