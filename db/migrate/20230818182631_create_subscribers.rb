class CreateSubscribers < ActiveRecord::Migration[7.0]
  def change
    create_table :subscribers do |t|
      t.string :email, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
