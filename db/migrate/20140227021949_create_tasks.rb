class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task, limit: 200
      t.text :description
      t.integer :status
      t.references :collaborator, index: true

      t.timestamps
    end
  end
end
