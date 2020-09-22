class CreateBenefits < ActiveRecord::Migration[6.0]
  def change
    create_table :benefits do |t|
      t.monetize :value
      t.references :benefit_type, null: false, foreign_key: true
      t.references :employment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
