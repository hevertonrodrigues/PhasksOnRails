class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role, limit: 50

      t.timestamps
    end
  end
end
