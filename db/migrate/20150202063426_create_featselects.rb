class CreateFeatselects < ActiveRecord::Migration
  def change
    create_table :featselects do |t|
      t.integer :product_id
      t.integer :feature_id
      t.integer :featunit_id
      t.boolean :is_other, default: false

      t.timestamps
    end
  end
end
