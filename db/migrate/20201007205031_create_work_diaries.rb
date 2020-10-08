class CreateWorkDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :work_diaries do |t|
      t.date :work_date
      t.text :activities_description
      t.time :start_time
      t.time :end_time
      t.references :construction, null: false, foreign_key: true
      t.references :stage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
