ActiveAdmin.register Post do
  form do |f|
  f.inputs "Details", :multipart => true do
    f.input :title
  end
  f.inputs "Content" do
    f.input :content, :input_html => { :class => "ckeditor" }
  end
  f.buttons
  end
end
