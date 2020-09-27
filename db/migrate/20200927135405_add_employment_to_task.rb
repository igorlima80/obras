class AddEmploymentToTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :employment, null: true, foreign_key: true
  end
end
