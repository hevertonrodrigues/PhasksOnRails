class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.string :name, limit: 50
      t.string :email, limit: 150
      t.references :role, index: true

      t.timestamps
    end
  end
end
