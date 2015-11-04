class AppointmentsController < ApplicationController
  
  def index
    @appointments = Appointment.all
  end
  
  def new
    @appointment = Appointment.new
    @pets = Pet.all
  end
  
  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      flash[:success] = "Appointment scheduled!"
      redirect_to appointments_path
    else
      flash[:danger] = "An error occurred."
      render :new
    end
  end
  
  private
  
    def appointment_params
      params.require(:appointment).permit(:date_of_visit, :pet_id, :user_id, 
                                          :requires_a_reminder, 
                                          :reason_for_visit, :vet_id)
    end
  
end
