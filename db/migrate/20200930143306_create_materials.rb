class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.text :description
      t.references :material_category, null: false, foreign_key: true
      t.string :unity

      t.timestamps
    end
  end
end
