class CreateDayWorks < ActiveRecord::Migration
  def change
    create_table :day_works do |t|
      t.string :name
      t.integer :hourwork
      t.string :note

      t.timestamps
    end
  end
end
