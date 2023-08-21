class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.text :message
      t.text :expected_services, array: true, default: []

      t.timestamps
    end
  end
end
