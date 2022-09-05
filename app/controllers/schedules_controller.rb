class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedules = Schedule.new
  end
end
