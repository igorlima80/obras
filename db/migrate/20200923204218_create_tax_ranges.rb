class CreateTaxRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :tax_ranges do |t|
      t.references :tax, null: false, foreign_key: true
      t.monetize :minimum_value
      t.decimal :percentual

      t.timestamps
    end
  end
end
