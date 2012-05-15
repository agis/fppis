ActiveAdmin.register FpImage, as: 'Frontpage' do
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

  show do |fp|
    attributes_table do
      row "Main Image" do
        image_tag(fp.main.url)
      end
      row 'Thumbnail #1' do
        image_tag(fp.first.url)
      end
      row 'Thumbnail #2' do
        image_tag(fp.second.url)
      end
      row 'Thumbnail #3' do
        image_tag(fp.third.url)
      end
    end
    active_admin_comments
  end

   index do
    column :id
    column :created_at
    column :updated_at
    column "Main Image" do |fp|
      image_tag fp.main.url(:thumb)
    end
    column "Thumbnail #1" do |fp|
      image_tag fp.first.url
    end
    column "Thumbnail #2" do |fp|
      image_tag fp.second.url
    end
    column "Thumbnail #3" do |fp|
      image_tag fp.third.url
    end
    default_actions

  end

# index :as => :grid, :columns => 1 do |fp|
#     link_to(image_tag(fp.main.url), edit_admin_frontpage_path(fp))
#   end
end
