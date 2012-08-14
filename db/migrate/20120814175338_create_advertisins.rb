class CreateAdvertisins < ActiveRecord::Migration
  def change
    create_table :advertisins do |t|
      t.string :name
      t.string :profile
      t.string :phone1
      t.string :phone2
      t.string :phone3
      t.string :email
      t.string :site1
      t.string :site2
      t.string :city
      t.string :adress
      t.string :shortdescription

      t.timestamps
    end
  end
end
