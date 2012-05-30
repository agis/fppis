ActiveAdmin.register Image do
  actions :all, except: :show
  menu parent: "Image Galleries"

  form do |f|
    f.inputs :multipart => true dhint: f.template.image_tag(f.object.file.url(:thumb))
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
end
