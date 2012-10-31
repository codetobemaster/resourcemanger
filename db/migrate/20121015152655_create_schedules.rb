class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :user_attend_projects
      t.integer :year
      t.integer :month
      t.integer :week
      t.integer :numberdays
      t.text :taskcontent
      t.text :comment
      t.integer :status

      t.timestamps
    end
    add_index :schedules, :user_attend_projects_id
  end
end
