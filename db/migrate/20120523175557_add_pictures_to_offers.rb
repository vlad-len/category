class AddPicturesToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :picture, :string
  end
end
