class IncompleteTaskScheduleProcessorJob < ApplicationJob
  queue_as :default

  def perform(task_schedule)
    task_schedule.incomplete = task_schedule.incomplete? ? true : false
    task_schedule.save
  end
end
