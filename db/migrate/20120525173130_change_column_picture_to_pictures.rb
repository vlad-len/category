class ChangeColumnPictureToPictures < ActiveRecord::Migration
  def up
    change_table :pictures do |t|
      t.rename :picture, :image
      end
  end

  def down
  end
end
