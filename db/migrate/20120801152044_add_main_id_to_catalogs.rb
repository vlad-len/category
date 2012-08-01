class AddMainIdToCatalogs < ActiveRecord::Migration
  def change
    add_column :categories, :parent_id, :integer
    add_column :categories, :child_id, :integer
  end
end
