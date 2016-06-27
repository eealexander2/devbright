class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :home_title

      t.timestamps(null:false)
    end
  end
end
