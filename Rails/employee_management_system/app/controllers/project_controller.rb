class ProjectController < ApplicationController
  def project_page
    @project = Project.new
  end
  def project_records
    @projects = Project.all 
  end
  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to '/projects'
  end

  def edit_project
    @project =  Project.find(params[:id])
  end
  
  def update_project
    @project = Project.find(params[:id])
    @project.update(name: params[:project][:name], status: params[:project][:status], deploying_date: params[:project][:deploying_date])
    redirect_to '/projects'
  end
  
  def delete_project
    @project = Project.find(params[:id])
    @project.delete
    redirect_to '/projects'
  end
  
  def project_params
    params.require(:project).permit(:name, :status, :deploying_date)
  end
end
