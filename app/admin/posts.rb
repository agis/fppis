ActiveAdmin.register Post do
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
      # TODO: make this a multi-select field (later)
      f.input :tag_list, label: 'Tags', hint: 'Comma separated'
    end

    f.inputs "Content" do
      # TODO: reduce ckeditor width to match the frontpage div's width
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