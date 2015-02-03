class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.integer :product_id
      t.float :amount
      t.timestamps
    end
  end
end
