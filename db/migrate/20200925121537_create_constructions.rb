class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :area
      t.monetize :expected_budget
      t.decimal :ground_area
      t.integer :bedroom
      t.integer :bathroom
      t.integer :toilet
      t.integer :living_room
      t.integer :cars_in_garage
      t.references :construction_type, null: false, foreign_key: true
      t.references :workplace, null: false, foreign_key: true
      t.integer :pattern
      t.boolean :barbecue_grill
      t.boolean :home_office
      t.boolean :balcony

      t.timestamps
    end
  end
end
