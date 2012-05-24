class RenameTableOffers < ActiveRecord::Migration
  def up
    rename_table :offers, :posts
  end

  def down
    rename_table :posts, :offers
  end
end
