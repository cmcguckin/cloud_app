class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :issue_type
      t.string :issue_name
      t.string :issue_description
      t.integer :sprint
      t.string :sprint_goal
      t.integer :estimated_time
      t.date :estimated_completion
      t.integer :actual_time
      t.date :actual_completion
      t.integer :story_points
      t.string :assigned_to
      t.string :issue_status
      t.integer :release
      t.date :release_date
      t.references :project, index: true, foreign_key: true
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
