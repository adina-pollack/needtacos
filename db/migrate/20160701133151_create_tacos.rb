class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.string :name, null: false
      t.string :description
      t.references :restaurant, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
