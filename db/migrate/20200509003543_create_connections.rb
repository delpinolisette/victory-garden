class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.references :leaf, foreign_key: true
      t.references :tree, foreign_key: true

      t.timestamps
    end
  end
end
