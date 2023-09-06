class Api::V1::AppointmentsController < ApplicationController
  # For 'My Appointments' page
  def index
    @appointments = current_user.appointments
    render json: @appointments
  end


  def new
    @appointment = Appointment.new
  end

  # Form action for 'Make Appointment' page
  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      render json: { status: 'Success', message: 'Appointment created successfully' }, status: :created
    else
      render json: { error: 'Unable to create appointment.' }, status: :unprocessable_entity  
    end
  end

   def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    if @appointment
       render json: { status: 'Deleted', message: 'Appointment was successfully deleted'  }
      
    else
       render json: { status: 'error', message: 'Unable to delete'  }, status: :unprocessable_entity 
     
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appoint_date, :furniture_id, :city, :user_id)
  end
end
