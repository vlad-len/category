class RemoveColumnPictureToPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :picture
  end

  def down
    add_column :posts, :picture
  end
end