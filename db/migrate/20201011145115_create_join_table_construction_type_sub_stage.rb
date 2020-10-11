class CreateJoinTableConstructionTypeSubStage < ActiveRecord::Migration[6.0]
  def change
    create_join_table :construction_types, :sub_stages do |t|
      # t.index [:construction_type_id, :sub_stage_id]
      # t.index [:sub_stage_id, :construction_type_id]
    end
  end
end
