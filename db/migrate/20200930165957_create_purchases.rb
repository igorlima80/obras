class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.date :expected_date
      t.date :purchase_date
      t.references :construction, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.integer :status
      t.references :sub_stage, null: false, foreign_key: true
      t.timestamps
    end
  end
end
