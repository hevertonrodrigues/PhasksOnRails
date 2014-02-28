class CreateTasksLists < ActiveRecord::Migration
  def change
    create_table :tasks_lists do |t|
      t.string :name, limit: 200
      t.text :description

      t.timestamps
    end
  end
end
