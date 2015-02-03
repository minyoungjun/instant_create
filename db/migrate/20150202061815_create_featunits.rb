class CreateFeatunits < ActiveRecord::Migration
  def change
    create_table :featunits do |t|
      t.integer :feature_id
      t.string  :name
      t.integer :unitype #0: select, 1: integer, 2: float,  3: text, 4:radio, 5:checkbox, 6: 가로세로+이미지첨부 7: Minutes, seconds, Max file size(MB), 8: Minutes, seconds, 9: 입력창 비활성화(N/A)
      t.integer :per_type, default: 0 #0: 아무거나선택 , 1:Daily, 2:  Monthly
      t.boolean :is_other, default: false
      t.timestamps
    end
  end
end
