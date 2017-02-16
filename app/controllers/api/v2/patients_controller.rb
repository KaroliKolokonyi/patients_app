class Api::V2::PatientsController < ApplicationController

  def index 

    @patients = Patient.all 
  end 


  def create
    patient = Patient.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      email: params[:email],
      )

    render :show
  end

  def show
    @patient = Employee.find_by(id:params[:id])
  end

  def update
    @patient = Employee.find_by(id:params[:id])
  @patient.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      email: params[:email],
   )
  
    render :show
  end

  def destroy
   @patient = Employee.find_by(id:params[:id])
   @patient.destroy

    render json: {message: "Patient Recovered!!!!!"}
  end
end
