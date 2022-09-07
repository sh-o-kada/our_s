class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.order("user_id ASC")
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

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    schedule = Schedule.find(params[:id])
    schedule.update(schedule_params)
  end

  private
  def schedule_params
    params.require(:schedule).permit(:work_time_1_id, :work_time_2_id, :work_time_3_id, :start_time).merge(user_id: current_user.id)
  end
end
