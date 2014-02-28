class AddTasksListToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :tasks_list, index: true
  end
end
