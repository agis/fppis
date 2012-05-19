# TODO: Add preview functionality
ActiveAdmin.register Post do
  menu :priority => 2
  form do |f|
    f.inputs "Details", :multipart => true do
      f.input :category
      f.input :country
      f.input :city, label: 'City / Town'
      f.input :story_title
      f.input :story_subtitle
      f.input :author
      f.input :photographer
      # LATER: make this a multi-select field (later)
      f.input :tag_list, label: 'Tags', hint: 'Comma separated'
    end

    f.inputs "Content" do
      f.input :content, as: :ckeditor, label: false,
                        input_html: { width: 695, height: 700 }
    end


    f.inputs "Publish" do
      f.input :published
      f.input :publish_date, :as => :ui_date_picker
    end

    f.buttons
  end
end