class CreateFpImages < ActiveRecord::Migration
  def change
    create_table :fp_images do |t|

      t.timestamps
    end
  end
end
