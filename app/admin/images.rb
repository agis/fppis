ActiveAdmin.register Image do
  menu parent: "Image Gallery"

  form do |f|
    f.inputs :multipart => true do
      f.input :file
      f.input :gallery

      f.buttons
    end
  end

  index do
    column :id

    column "Image" do |image|
      image_tag image.file.url(:thumb)
    end

    column :gallery

    default_actions
  end

  controller do
    def show
      show! do |format|
        format.html { redirect_to admin_images_path }
      end
    end
  end
end
