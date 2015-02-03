class CreateShowtypes < ActiveRecord::Migration
  def change
    create_table :showtypes do |t|
      t.string  :name
      t.timestamps
    end
  end
end
