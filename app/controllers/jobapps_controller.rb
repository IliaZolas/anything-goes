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

  def applicant
    @applicants = current_user.applicants
    # @applicants = []
    # current_user.jobs.each do |job|
    #   job.jobapps.each do |jobapp|
    #     hash_jobapp = {job: jobapp.job, user: jobapp.user}
    #     @applicants << hash_jobapp
    #   end
    # end
  end

  def accepted
    @accept = Jobapp.find(params[:id])
    @accept.update_attribute(accepted: true)
    redirect_to applicant_path(current_user)
  end

  private

  def jobapp_params
    params.require(:jobapp).permit(:message, :photo)
  end
end
