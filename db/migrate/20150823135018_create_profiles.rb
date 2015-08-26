class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :surname
      t.boolean :gender
      t.string :manager
      t.string :role
      t.date :start_date
      t.date :end_date
      t.integer :holiday_allowance

      t.timestamps null: false
    end
  end
end
