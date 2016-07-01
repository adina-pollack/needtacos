class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :phone_number
      t.string :website
      t.references :neighborhood, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
