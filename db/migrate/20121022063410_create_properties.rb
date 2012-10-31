class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :property_key
      t.string :property_value

      t.timestamps
    end
  end
end
