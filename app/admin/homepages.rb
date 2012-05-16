ActiveAdmin.register Homepage do
  menu :priority => 1
  config.clear_sidebar_sections!

  form do |f|
    f.inputs "Upload Images", :multipart => true do
      f.input :main, :hint => '650x400', :label => 'Main Image'
      f.input :first, :hint => '150x150', :label => 'Thumbnail #1'
      f.input :second, :hint => '150x150', :label => 'Thumbnail #2'
      f.input :third, :hint => '150x150', :label => 'Thumbnail #3'
    end

    f.buttons
  end

  show do |hp|
    attributes_table do
      row "Main Image" do
        image_tag(hp.main.url)
      end
      row 'Thumbnail #1' do
        image_tag(hp.first.url)
      end
      row 'Thumbnail #2' do
        image_tag(hp.second.url)
      end
      row 'Thumbnail #3' do
        image_tag(hp.third.url)
      end
    end
    active_admin_comments
  end

   index do
    column :id
    column :created_at
    column :updated_at
    column "Main Image" do |hp|
      image_tag hp.main.url(:thumb)
    end
    column "Thumbnail #1" do |hp|
      image_tag hp.first.url
    end
    column "Thumbnail #2" do |hp|
      image_tag hp.second.url
    end
    column "Thumbnail #3" do |hp|
      image_tag hp.third.url
    end
    default_actions

  end

# index :as => :grid, :columns => 1 do |hp|
#     link_to(image_tag(hp.main.url), edit_admin_frontpage_path(hp))
#   end
end
