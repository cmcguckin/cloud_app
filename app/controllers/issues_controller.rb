class IssuesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @issue = @project.issues.create(issue_params)
    redirect_to project_path(@project)
  end
  
  def show
  	@issue = Issue.find(params[:issue_id])
  end

  def destroy
    @project = Project.find(params[:project_id])
    @issue = @project.issues.find(params[:id])
    @issue.destroy
    redirect_to project_path(@project)
  end

  private
    def issue_params
      params.require(:issue).permit(:issue_type, :issue_name, :issue_description, :sprint, :sprint_goal, :estimated_time, :estimated_completion, :actual_time, :actual_completion, :story_points, :assigned_to, :issue_status, :release, :release_date, :project, :profile)
    end
end