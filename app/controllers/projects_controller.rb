class ProjectsController < ApplicationController
def index
   @project = Project.search(params[:search])
  end

  def summary
   @project = Project.search(params[:search])
  end

  def feedback
   @project = Project.search(params[:search])
  end

  def show
    @projects = Project.find(params[:id])
  end
  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end
 
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end
  def update
    @project = Project.find(params[:id])
 
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path
  end
 
  private
   def project_params
     params.require(:project).permit(:name, :description, :key, :objectives, :benefits, :data_required, :legal_compliance, :platform, :executive_sponsor, :scrum_master, :product_owner, :text)
   end
end

#The new action is now creating a new instance variable called @Project