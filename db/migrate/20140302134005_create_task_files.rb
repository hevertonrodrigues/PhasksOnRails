class CreateTaskFiles < ActiveRecord::Migration
  def change
    create_table :task_files do |t|
      t.attachment :file
      t.references :task, index: true
    end
  end
end
