class ProjectController < ApplicationController
  def project_page
  end
  def project_records
    @projects = Project.all 
  end
end
