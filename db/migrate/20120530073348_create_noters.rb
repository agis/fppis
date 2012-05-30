class CreateNoters < ActiveRecord::Migration
  def change
    create_table :noters do |t|
      t.string :name

      t.timestamps
    end
  end
end
