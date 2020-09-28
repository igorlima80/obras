class CreateOccupation < ActiveRecord::Migration[6.0]
  def change
    create_table :occupations do |t|
      t.string :name
    end
  end
end
