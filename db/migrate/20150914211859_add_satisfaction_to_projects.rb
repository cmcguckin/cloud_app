class AddSatisfactionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :satisfaction, :integer
  end
end
