class AddCountriesAndCitiesToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :country, :string
    add_column :galleries, :city, :string
  end
end
