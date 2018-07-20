class AddCompletedToTaskSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :task_schedules, :completed, :boolean
  end
end
