ActiveAdmin.register Gallery do
  menu parent: "Image Galleries"

  index do
    column :id
    column :title
    column :category
    column "No. of Images" do |gallery|
      gallery.images.count
    end

    default_actions
  end
end
