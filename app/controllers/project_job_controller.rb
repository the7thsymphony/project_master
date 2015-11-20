class ProjectJobController < ApplicationController
  def show
    @project_job = project_job.find(params[:id])
  end

  def new
  end

  def edit
  end

  def destroy
  end
end


