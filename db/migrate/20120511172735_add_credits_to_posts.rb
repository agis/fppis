class AddCreditsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author_id, :integer
    add_column :posts, :photographer_id, :integer
  end
end
