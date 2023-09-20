class SchedulesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :upgrate, :destroy]
  

  def index
    @schedules = Schedule.all
    @messages = Message.all
  end
  
  def new
    @schedule = Schedule.new
    @schedules = Schedule.all
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
       redirect_to schedules_path
    else
      render :new
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
    @applicant = Applicant.new
    @applicants = @schedule.applicants.includes(:user)
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to schedules_path, notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.applicants.destroy_all
    @schedule.destroy
    redirect_to schedules_path, notice:"削除しました"
  end

  

  private

  def schedule_params
    params.require(:schedule).permit(:start_time, :finish_time, :place, :activity, :participant).merge(user_id: current_user.id)
  end



end
