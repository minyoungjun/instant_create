class CreateValueimages < ActiveRecord::Migration
  def change
    create_table :valueimages do |t|
      t.integer :featvalue_id
      t.attachment :image
      t.timestamps
    end
  end
end
