class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.date :start_date
      t.date :end_date
      t.text :comment

      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
