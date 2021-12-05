class Api::V1::TimersController < ApplicationController
  before_action :authenticate_api_v1_user!

  def index
    render json: current_api_v1_user.timer
  end

  def create
    timer = current_api_v1_user.build_timer(timer_params)
    if timer.save
      render json: timer
    else
      render json: timer.errors.full_message
    end
  end

  private

  def timer_params
    params.require(:timer).permit(:study_time, :break_time)
  end
end
