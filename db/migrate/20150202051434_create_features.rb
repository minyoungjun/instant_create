class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.integer :showtype_id
      t.string  :name
      t.integer  :featype #0: select, 1: integer, 2: float,  3: text, 4:radio, 5:checkbox 
      t.timestamps
    end
  end
end
