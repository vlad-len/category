class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :description
      t.text :short_description

      t.timestamps
    end
  end
end
