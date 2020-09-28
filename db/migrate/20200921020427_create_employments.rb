class CreateEmployments < ActiveRecord::Migration[6.0]
  def change
    create_table :employments do |t|
      t.date :admission_date
      t.date :resignation_date
      t.integer :status
      t.monetize :base_salary
      t.references :occupation, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
