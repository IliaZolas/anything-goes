class JobsController < ApplicationController
  def index
    @job = Job.all
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

  def update
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
      redirect_to jobs_path(@job)
  end

  private

  def job_params
      params.require(:job).permit(:job_title, :job_description, :job_price, :photo)
  end
end
