class AddNextSprintToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :next_sprint, :string
  end
end
