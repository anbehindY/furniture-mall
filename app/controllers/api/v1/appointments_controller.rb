class Api::V1::AppointmentsController < ApplicationController
  # For 'My Appointments' page
  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  # For 'Make Appointment' page
  def new
    @appointment = Appointment.new
  end

  def show
    furniture = Appointment.find(params[:id])
    render json: appointment
  end

  # Form action for 'Make Appointment' page
  def create
    @appointment = Appointment.create(appointment_params)
    if @appointment.save
      render json: @appointment
    else
      render json: { error: 'Unable to create appointment.' }, status: unprocessable_entity
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appoint_date, :furniture_id, :user_id)
  end
end
