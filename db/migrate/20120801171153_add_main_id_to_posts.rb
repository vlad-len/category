class AddMainIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :parent_id, :integer
    add_column :posts, :child_id, :integer
  end
end
