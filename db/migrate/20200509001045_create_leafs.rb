class CreateLeafs < ActiveRecord::Migration[5.2]
  def change
    create_table :leafs do |t|
      t.string :title
      t.string :body
      t.references :user, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end
