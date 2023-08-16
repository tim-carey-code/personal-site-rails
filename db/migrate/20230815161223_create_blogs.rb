class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.integer :time_of_read
      t.string :category

      t.timestamps
    end
  end
end
