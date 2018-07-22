class IncompleteTaskScheduleProcessorJob < ApplicationJob
  queue_as :default

  def perform(task_schedule)
    task_schedule.incomplete = task_schedule.completed? ? false : true
    task_schedule.save
  end
end
