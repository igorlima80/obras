class AddSubStageToTaskType < ActiveRecord::Migration[6.0]
  def change
    add_reference :task_types, :sub_stage, null: false, foreign_key: true
  end
end
