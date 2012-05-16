# TODO: Add preview functionality
ActiveAdmin.register Post do
  menu :priority => 2
  form do |f|
    f.inputs "Details", :multipart => true do
      f.input :published
      f.input :category
      f.input :category_title
      f.input :story_title
      f.input :story_subtitle
      f.input :publish_date, label: 'Published Date'
      f.input :country
      f.input :city, label: 'City / Town'
      # LATER: make this a multi-select field (later)
      f.input :tag_list, label: 'Tags', hint: 'Comma separated'
    end

    f.inputs "Content" do
      # FIXME: upload using paperclip and Amazon s3
      f.input :content, as: :ckeditor, label: false,
                        input_html: { width: 640, height: 500 }
    end

   f.inputs "Credits" do
      f.input :author
      f.input :photographer
    end

    f.buttons
  end
end