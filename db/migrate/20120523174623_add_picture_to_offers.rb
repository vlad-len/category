class AddPictureToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :avatar, :string
  end
end
