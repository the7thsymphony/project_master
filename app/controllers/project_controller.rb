class ProjectController < ApplicationController

before_action :find_project, only: [:show, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render :new
  end


  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    @project.destroy
    redirect_to project_path
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :media)

  end

end
