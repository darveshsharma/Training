class ProjectAssignmentController < ApplicationController
  def assignment_page
    @assignment = ProjectAssignment.new
  end

  def create
    @assignment = ProjectAssignment.new(assignment_params)
    if @assignment.save
      redirect_to '/assignments'
    else
      redirect_to '/assignment'
    end
  end

  def assignment_show
    @assignments = ProjectAssignment.all
  end

  def assignment_params
    params.require(:project_assignment).permit(:employee_id, :project_id)
  end

end

