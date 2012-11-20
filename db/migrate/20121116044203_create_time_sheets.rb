class CreateTimeSheets < ActiveRecord::Migration
  def change
    create_table :time_sheets do |t|
      t.references :staff
      t.integer :year
      t.integer :month
      t.integer :day
      t.references :day_work
      t.integer :actual
      t.string :note
      t.integer :status

      t.timestamps
    end
    add_index :time_sheets, :staff_id
    add_index :time_sheets, :day_work_id
  end
end
