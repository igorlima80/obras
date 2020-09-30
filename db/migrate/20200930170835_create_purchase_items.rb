class CreatePurchaseItems < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_items do |t|
      t.decimal :amount
      t.monetize :unity_price
      t.monetize :total_price
      t.references :material, null: false, foreign_key: true
      t.references :purchase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
