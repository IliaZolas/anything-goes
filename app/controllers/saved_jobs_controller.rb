class SavedJobsController < ApplicationController
  def index
    @job = SavedJob.where(user_id: current_user)
  end

  def new
    @job = SavedJob.new
  end

  def create
    @job.saved_jobs.create(user_id: current_user.id,job_id:params[:job_id])
    redirect_to jobs_path
  end

  def destroy
  end

  def usersaved
    @jobs = current_user.saved_jobs
  end

end
