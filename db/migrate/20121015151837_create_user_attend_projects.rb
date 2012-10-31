class CreateUserAttendProjects < ActiveRecord::Migration
  def change
    create_table :user_attend_projects do |t|
      t.references :user
      t.references :project
      t.string :description

      t.timestamps
    end
    add_index :user_attend_projects, :user_id
    add_index :user_attend_projects, :project_id
  end
end
