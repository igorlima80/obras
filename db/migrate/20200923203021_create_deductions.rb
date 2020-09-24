class CreateDeductions < ActiveRecord::Migration[6.0]
  def change
    create_table :deductions do |t|
      t.string :name

      t.timestamps
    end
  end
end
