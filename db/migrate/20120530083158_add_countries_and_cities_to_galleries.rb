class AddCountriesAndCitiesToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :country, :string
    add_column :albums, :city, :string
  end
end
