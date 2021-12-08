class Api::V1::RecordsController < ApplicationController
  before_action :authenticate_api_v1_user!

  def index
    times = current_api_v1_user.records.map do |record|
      {
        study_time: record.study_time,
        break_time: record.break_time,
        created_at: record.created_at.to_s(:datetime_jp)
      }
    end
    render json: times
  end

  def create
    record = current_api_v1_user.records.build(record_params)
    if record.save
      render json: record
    else
      render json: record.errors.full_message
    end
  end

  private

  def record_params
    params.require(:record).permit(:study_time, :break_time)
  end
end
