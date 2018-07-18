class Api::MeasurementsController < ApplicationController

  def show
    @measurement = Measurement.find(params[:id])
    render "show.json.jbuilder"  
  end

  def create
    @measurement = Measurement.new(name: params[:name],
      height: params[:height],
      chest: params[:chest],
      waist: params[:waist],
      hips: params[:hips],
      thigh: params[:thigh],
      calf: params[:calf],
      inseam: params[:inseam],
      upper_arm_circumference: params[:upper_arm_circumference],
      arm_length: params[:arm_length],
      shoulder_to_shoulder_width: params[:shoulder_to_shoulder_width],
      armpit_to_waist: params[:armpit_to_waist],
      waist_to_hip: params[:waist_to_hip],
      )
    render "show.json.jbuilder"
  end

  def update
    @measurement = Measurement.find(params[:id])
    render "show.json.jbuilder"  
  end

  def destroy
    measurement_id = params[:id]
    @measurement = Measurement.find(measurement_id)
    @measurement.destroy
    render json: "Measurement successfully deleted"
  end

end
