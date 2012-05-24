class RemovePictureToOffers < ActiveRecord::Migration
  def up
    remove_column :offers, :avatar, :string
  end

  def down
    add_column :offers, :avatar, :string
  end
end
