class AddSprintFeedbackToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :sprint_feedback, :string
  end
end
