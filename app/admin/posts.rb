ActiveAdmin.register Post do
  form do |f|
    f.inputs "Details", :multipart => true do
      f.input :category
      f.input :category_title
      f.input :story_title
      f.input :story_subtitle
    end

    f.inputs "Content" do
      f.input :content, :input_html => { :class => "ckeditor" }
    end

   f.inputs "Credits" do
      f.input :author
      f.input :photographer
    end

    f.buttons
  end
end
