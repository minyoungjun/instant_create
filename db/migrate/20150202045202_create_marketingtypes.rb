class CreateMarketingtypes < ActiveRecord::Migration
  def change
    create_table :marketingtypes do |t|
      t.integer :parent_id
      t.integer :showtype_id
      t.string  :name
      t.integer :filter
      t.boolean :can_select, default: true
      t.boolean :is_mobile, default: false
      t.integer :mobile_type #0: all, 1: iOS, 2: Android
      t.boolean :global, default: false
      t.timestamps
    end
  end
end
