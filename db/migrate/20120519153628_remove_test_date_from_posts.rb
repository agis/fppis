class RemoveTestDateFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :test_date
  end
end
