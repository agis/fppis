# TODO: Implement Preview button
ActiveAdmin.register Album do
  menu parent: "Image Albums"
  actions :all, :except => [:show]

  index do
    column :id
    column :title
    column :country
    column :city
    column "No. of Images" do |gallery|
      gallery.images.count
    end
    column :category

    default_actions
  end
end
