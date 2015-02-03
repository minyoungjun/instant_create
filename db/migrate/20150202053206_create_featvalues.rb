class CreateFeatvalues < ActiveRecord::Migration
  def change
    create_table :featvalues do |t|
      t.integer :feature_id
      t.integer :product_id
      t.integer :detail_id
      t.string  :content
      t.integer :amount_i
      t.float :amount_f #가로로 쓰일 때도 있음
      t.float :amount_f_2 #세로로 쓰일 때도 있음

      t.timestamps
    end
  end
end
