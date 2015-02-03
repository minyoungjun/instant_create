class CreateFeatpers < ActiveRecord::Migration
  def change
    create_table :featpers do |t|
      t.integer :featunit_id
      t.string  :name
      t.timestamps
    end
  end
end
