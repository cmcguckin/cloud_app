class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :key
      t.string :name
      t.text :description
      t.text :objectives
      t.text :benefits
      t.text :data_required
      t.text :legal_compliance
      t.string :platform
      t.string :executive_sponsor
      t.string :scrum_master
      t.string :product_owner

      t.timestamps null: false
    end
  end
end
