class UserJobsController < ApplicationController
  before_action :find_job, only: [:create]

  def index
    @job = SavedJob.where(user_id: current_user)
  end

  def new
    @job = SavedJob.new
  end

  def create
    if already_saved?
      flash[:notice] = "You can't save more than once"
      else
      @job.saved_jobs.create(user_id: current_user.id, job_id:params[:job_id])
    end
    redirect_to jobs_path
  end

  def destroy
  end

  def usersaved
    @jobs = current_user.saved_jobs
  end

  private

  def find_job
    @job = Job.find(params[:job_id])
  end
  
  def already_saved?
    SavedJob.where(user_id: current_user.id, job_id:params[:job_id]).exists?
  end

  def job_params
    params.require(:job).permit(:user_id, :job_title, :job_description, :job_long_description, :job_location, :job_price, :photo)
end

end
