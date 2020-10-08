class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.string :name
      t.text :description
      t.references :work_diary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
