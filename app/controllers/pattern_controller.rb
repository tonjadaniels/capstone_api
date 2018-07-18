class PatternController < ApplicationController

  def update
    pattern_id = params[:id]
    @pattern = Pattern.find(pattern_id)

    @pattern.clothing = params[:clothing] || @pattern.clothing
    @pattern.fabric = params[:fabric] || @pattern.fabric
    @pattern.yard = params[:yard] || @pattern.yard

    if @pattern.save
      render "pattern.json.jbuilder"
    else
      render json: {errors: @pattern.errors.full_messages}, status: :unprocessable_entity
    end
  else
    render json {}, status: :unauthorized
  end
end
