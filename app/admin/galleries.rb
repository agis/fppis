ActiveAdmin.register Gallery do
  menu parent: "Image Galleries"
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
