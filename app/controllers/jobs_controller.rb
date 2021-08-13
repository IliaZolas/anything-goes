class JobsController < ApplicationController
  def index
    @job = Job.all
    @saves = UserJob.new
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end
  

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    if @job.save!
        redirect_to jobs_path(@job)
    else
        render 'new'
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to jobs_path(@job)
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path(@job)
  end

  def posted
    @job = Job.where(user_id: current_user)
  end

  private

  def job_params
      params.require(:job).permit(:user_id, :job_title, :job_description, :job_long_description, :job_location, :job_price, :photo)
  end
end
