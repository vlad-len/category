class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :picture
      t.integer :offer_id

      t.timestamps
    end
  end
end
