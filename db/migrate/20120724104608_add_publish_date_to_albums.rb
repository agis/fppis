class AddPublishDateToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :publish_date, :date
  end
end
