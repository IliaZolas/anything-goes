class JobappsController < ApplicationController
  def index
    @jobapp = Jobapp.where(user_id: current_user)
    @job = Job.all
  end

  def show
  end

  def new
    @jobapp = Jobapp.new
    @job = Job.find(params[:job_id])
  end

  def create
    @jobapp = Jobapp.new(jobapp_params)
    @job = Job.find(params[:job_id])
    @jobapp.job = @job
    @jobapp.user = current_user
    @jobapp.save
    redirect_to job_jobapps_path
  end

  def update
  end

  def destroy
  end

  #Jobs listed in Applicants

  def applicant
    @applications = current_user.applicants
  end
  
  #button actions

  def accept
    @accept = Jobapp.find(params[:id])
    @accept.update_attribute(:accepted, true)
    redirect_to applicant_path(current_user)
  end

  def decline
    @decline = Jobapp.find(params[:id])
    @decline.update_attribute(:accepted, false)
    redirect_to applicant_path(current_user)
  end

  def complete
    @complete = Jobapp.find(params[:id])
    @complete.update_attribute(:complete, true)
    redirect_to applicant_path(current_user)
  end

  #Applicants menus

  def accepted
    @acceptedjobs = current_user.applicants.where(accepted: true)
  end

  def declined
    @declinedjobs = current_user.applicants.where(accepted: false)
  end

  def completed
    @completedjobs = current_user.applicants.where(complete: true)
  end

  #Jobs listed in User Applied

  def jobaccepted
    @acceptedjobs = current_user.applicants.where(accepted: true)
  end

  def jobdeclined
    @declinedjobs = current_user.applicants.where(accepted: false)
  end

  def jobcompleted
    @completedjobs = current_user.applicants.where(complete: true)
  end

  private

  def jobapp_params
    params.require(:jobapp).permit(:message, :photo)
  end
end
