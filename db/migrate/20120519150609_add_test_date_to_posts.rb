class AddTestDateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :test_date, :date
  end
end
