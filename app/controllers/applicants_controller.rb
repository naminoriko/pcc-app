class ApplicantsController < ApplicationController
  def create
    applicant = Applicant.create(applicant_params)
    redirect_to "/schedules/#{applicant.schedule.id}"
  end

  private
  def applicant_params
    params.require(:applicant).permit(:content).merge(user_id: current_user.id, schedule_id: params[:schedule_id])
  end
end
