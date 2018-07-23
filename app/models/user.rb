class User < ApplicationRecord
  has_many :tasks
  has_many :task_schedules

  validates_presence_of :name, :email
end
