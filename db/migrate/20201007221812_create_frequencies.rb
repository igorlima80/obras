class CreateFrequencies < ActiveRecord::Migration[6.0]
  def change
    create_table :frequencies do |t|
      t.time :start
      t.time :finish
      t.references :work_diary, null: false, foreign_key: true
      t.references :employment, null: false, foreign_key: true
      t.boolean :presence
      t.timestamps
    end
  end
end
