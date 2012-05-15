class CreateFrontpages < ActiveRecord::Migration
  def change
    create_table :frontpages do |t|

      t.timestamps
    end
  end
end
