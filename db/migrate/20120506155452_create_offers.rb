class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.string :short_description
      t.string :phone1
      t.string :phone2
      t.string :email
      t.string :city
      t.string :address
      t.integer :category_id

      t.timestamps
    end
  end
end
