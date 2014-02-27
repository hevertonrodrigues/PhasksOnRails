class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, limit: 100
      t.text :description
      t.references :color, index: true

      t.timestamps
    end
  end
end
