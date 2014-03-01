class CreateTasksStatuses < ActiveRecord::Migration
  def change
    create_table :tasks_statuses do |t|
      t.string :name, limit: 10

      t.timestamps
    end
  end
end
