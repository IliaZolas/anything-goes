class JobappsController < ApplicationController
  def index
    @jobapp = Jobapp.where(user_id: current_user)
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

  private

  def jobapp_params
    params.require(:jobapp).permit(:message, :photo)
  end
end
