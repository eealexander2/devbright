class CreateBidders < ActiveRecord::Migration
  def change
    create_table :bidders do |t|
      t.integer :lead_id
      t.integer :home_id

      t.timestamps(null:false)
    end
  end
end
