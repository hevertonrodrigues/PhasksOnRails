class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :type, limit: 1
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
