class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.references :trees, foreign_key: true

      t.timestamps
    end
  end
end
