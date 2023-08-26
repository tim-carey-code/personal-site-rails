class AddTaglineToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :tagline, :string
  end
end
