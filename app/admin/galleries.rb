ActiveAdmin.register Gallery do
  menu parent: "Image Gallery"

  index do
    column :id
    column :title
    column "No. of Images" do |gallery|
      gallery.images.count
    end

    default_actions
  end
end
