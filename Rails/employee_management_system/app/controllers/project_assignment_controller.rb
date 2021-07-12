class ProjectAssignmentController < ApplicationController
  def assignment_page
    @assignment = ProjectAssignment.new
  end

  def create
    @assignment = ProjectAssignment.new(assignment_params)
    @assignment.save
    redirect_to '/assignments'
  end

  def assignment_show
    @assignments = ProjectAssignment.all
  end

  def assignment_params
    params.require(:project_assignment).permit(:employee_id, :project_id)
  end

end

