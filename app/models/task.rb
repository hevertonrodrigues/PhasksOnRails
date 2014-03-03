class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :collaborator
  belongs_to :tasks_list
  belongs_to :tasks_status
  has_many :task_file
end
