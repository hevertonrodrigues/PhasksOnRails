class Task < ActiveRecord::Base
  default_scope { order('id DESC') } 
  belongs_to :project
  belongs_to :collaborator
  belongs_to :tasks_list
  belongs_to :tasks_status
  has_many :task_file
end
