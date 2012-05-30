class AddNotersToImages < ActiveRecord::Migration
  def change
    add_column :images, :noter_id, :integer
  end
end
