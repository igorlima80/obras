class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :company_name
      t.string :cnpj
      t.string :email
      t.string :salesman

      t.timestamps
    end
  end
end
