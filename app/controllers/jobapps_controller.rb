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
    @jobapp = Jobapp.where(user_id: current_user)
    # Show all jobs from poster and not current user
    # Jobapps has job_id which belongs to the poster
    # In Jobapp select all with job_id that belongs to poster
  end

  private

  def jobapp_params
    params.require(:jobapp).permit(:message, :photo)
  end
end
