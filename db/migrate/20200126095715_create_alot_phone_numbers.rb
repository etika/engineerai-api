class CreateAlotPhoneNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :alot_phone_numbers do |t|
      t.string :phone_number
      t.boolean :allotted, :default=>false

      t.timestamps
    end
  end
end
