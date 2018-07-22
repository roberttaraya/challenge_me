class AddIncompleteToTaskSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :task_schedules, :incomplete, :boolean
  end
end
