class RenameTableCats < ActiveRecord::Migration
  def change
    rename_table :cats, :categories
  end

end
