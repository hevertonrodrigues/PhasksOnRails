class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name, limit: 20
      t.string :hex, limit: 7

      t.timestamps
    end
  end
end
