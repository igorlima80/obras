class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.references :service_type, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.references :task_type, null: false, foreign_key: true
      t.references :construction, null: false, foreign_key: true
      t.date :expected_date
      t.text :description
      t.monetize :total_price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
