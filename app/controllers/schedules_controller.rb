class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedules = Schedule.new
  end

  def create
    Schedule.create(schedule_params)
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
  end

  private
  def schedule_params
    params.require(:schedule).permit(:name, :work_time_1_id, :work_time_2_id, :work_time_3_id, :start_time)
  end
end
