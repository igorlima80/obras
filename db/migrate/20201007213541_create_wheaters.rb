class CreateWheaters < ActiveRecord::Migration[6.0]
  def change
    create_table :wheaters do |t|
      t.integer :work_diary_id
      t.integer :shift
      t.integer :climate_condition
      t.timestamps
    end
  end
end
