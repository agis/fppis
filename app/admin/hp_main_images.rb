ActiveAdmin.register HpMainImage do
  menu :parent => "Homepage", :label => 'Main Image Area'
  config.clear_sidebar_sections!
  actions :all, :except => [:new, :destroy]

  form do |f|
    f.inputs "Images", :multipart => true do
      f.input :one
      f.input :two
      f.input :three
      f.input :four
      f.input :five
      f.input :six
      f.input :all_images, :as => :preview
    end

    f.buttons
  end

    index do
    column "Image #1" do |main_image|
      image_tag main_image.one.url(:thumb)
    end

    column "Image #2" do |main_image|
      image_tag main_image.two.url(:thumb)
    end

    column "Image #3" do |main_image|
      image_tag main_image.three.url(:thumb)
    end

    column "Image #4" do |main_image|
      image_tag main_image.four.url(:thumb)
    end

    column "Image #5" do |main_image|
      image_tag main_image.five.url(:thumb)
    end

    column "Image #6" do |main_image|
      image_tag main_image.six.url(:thumb)
    end
  end

  show do |ad|
    attributes_table do
      row '#1' do
        image_tag(ad.one.url(:thumb))
      end
      row '#2' do
        image_tag(ad.two.url(:thumb))
      end
      row '#3' do
        image_tag(ad.three.url(:thumb))
      end
      row '#4' do
        image_tag(ad.four.url(:thumb))
      end
      row '#5' do
        image_tag(ad.five.url(:thumb))
      end
      row '#6' do
        image_tag(ad.six.url(:thumb))
      end
    end
    active_admin_comments
  end


  sidebar " " do
    raise "More than one Homepage resources detected. Contact the developer please." if HpMainImage.count > 1
    link_to 'Edit Images', edit_admin_hp_main_image_path(HpMainImage.first)
  end
end