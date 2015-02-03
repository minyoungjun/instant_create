class CreatePervalues < ActiveRecord::Migration
  def change
    create_table :pervalues do |t|
      t.integer :featvalue_id
      t.integer :featper_id
      t.timestamps
    end
  end
end
