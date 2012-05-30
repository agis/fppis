ActiveAdmin.register Image do
  menu parent: "Image Galleries"

  form do |f|
    f.inputs :multipart => true do
      f.input :file, label: 'Image'
      f.input :caption
      f.input :gallery
      f.input :tag_list, label: 'Tags', hint: 'Comma separated'
    end

    f.inputs "Credits" do
      f.input :noter
      f.input :photographer
    end

    f.buttons
  end

  index do
    column :id
    column "Image" do |image|
      image_tag image.file.url(:thumb)
    end
    column :caption
    column :gallery

    default_actions
  end

  # TODO: Show thumbnail in edit action

  controller do
    def show
      show! do |format|
        format.html { redirect_to admin_images_path }
      end
    end
  end
end
