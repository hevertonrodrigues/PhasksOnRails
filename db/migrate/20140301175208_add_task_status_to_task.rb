class AddTaskStatusToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :tasks_status, index: true
  end
end
