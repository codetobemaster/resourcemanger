class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :skyper
      t.string :email
      t.datetime :dateofbirth
      t.integer :roles
      t.integer :status

      t.timestamps
    end
  end
end
