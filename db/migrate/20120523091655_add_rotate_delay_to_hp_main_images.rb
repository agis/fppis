class AddRotateDelayToHpMainImages < ActiveRecord::Migration
  def change
    add_column :hp_main_images, :rotate_delay, :integer
  end
end
