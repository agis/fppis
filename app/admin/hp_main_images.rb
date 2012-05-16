ActiveAdmin.register HpMainImage do
  menu :parent => "Homepage", :label => 'Main Image Area'
  config.clear_sidebar_sections!
  actions :all, :except => [:new, :destroy]

  form do |f|
    f.inputs "Images", :multipart => true do
      f.input :one # TODO: add hints when Corey sends me exact sizes
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

  controller do
    def show
      show! do |format|
        format.html { redirect_to admin_hp_main_images_path }
      end
    end
  end


  sidebar " " do
    raise "More than one Homepage resources detected. Contact the developer please." if HpMainImage.count > 1
    link_to 'Edit Images', edit_admin_hp_main_image_path(HpMainImage.first)
  end
end