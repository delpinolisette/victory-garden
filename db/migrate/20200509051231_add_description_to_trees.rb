class AddDescriptionToTrees < ActiveRecord::Migration[5.2]
  def change
    add_column :trees, :description, :string
  end
end
