class CreateJoinTableConstructionEmployment < ActiveRecord::Migration[6.0]
  def change
    create_join_table :constructions, :employments do |t|
      # t.index [:construction_id, :employment_id]
      # t.index [:employment_id, :construction_id]
    end
  end
end
