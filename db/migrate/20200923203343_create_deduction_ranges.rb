class CreateDeductionRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :deduction_ranges do |t|
      t.references :deduction, null: false, foreign_key: true
      t.monetize :minimum_value
      t.decimal :percentual

      t.timestamps
    end
  end
end
