class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :title
      t.integer :sale_price
      t.integer :zip
      t.integer :bedrooms

      t.timestamps(null:false)
    end
  end
end
