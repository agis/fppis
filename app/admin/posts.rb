ActiveAdmin.register Post do
  form do |f|
    f.inputs "Details", :multipart => true do
      f.input :category
      f.input :category_title
      f.input :story_title
      f.input :story_subtitle
      f.input :publish_date, :label => "Published Date"
      f.input :published
      f.input :tag_list, :label => "Tags",
                         :as => :select,
                         :multiple => :true,
                         :input_html => { :size => "7" },
                         :collection => ActsAsTaggableOn::Tag.all
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


    def create
      create! do |format|
      return redirect_to "/admin/posts", :notice => "New Campaign created!"
      end
    end

end
