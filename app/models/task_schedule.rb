class TaskSchedule < ApplicationRecord
  belongs_to :user
  after_create -> { IncompleteTaskScheduleProcessorJob.set(wait_until: self.due_date).perform_later(self) }

  def completed?
    !!self.completed
  end
end
