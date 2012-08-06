# TODO: Add preview functionality
ActiveAdmin.register Post do
  actions :all, :except => [:show]

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

  index do
    column "ID" do |post|
      link_to post.id, edit_admin_post_path(post)
    end
    column :country
    column :city
    column :story_title
    column :story_subtitle
    column :author
    column :publish_date
    column :published

    default_actions
  end

  member_action :preview do
    @post = Post.find(params[:id])
  end

  action_item :only => :edit do
    link_to('Preview', preview_admin_post_path(post))
  end

  action_item :only => :preview do
    link_to('Back to Edit Post', edit_admin_post_path(post))
  end
end