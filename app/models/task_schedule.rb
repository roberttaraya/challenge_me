class TaskSchedule < ApplicationRecord
  belongs_to :user

  def completed?
    !!self.completed
  end
end
