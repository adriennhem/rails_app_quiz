class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'index'
  end

  def show
    @job = Job.find_by(id: params[:id])
    render 'show'
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      render 'create'
    end
  end

  private

  def job_params
    params.require(:job).permit(:url, :employer_name, :employer_description, :job_title, :job_description, :year_of_experience, :education_requirement, :industry, :base_salary, :employment_type_id)
  end
end
