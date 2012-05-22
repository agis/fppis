ActiveAdmin.register HpSecondThumb do
  menu :parent => "Homepage", :label => 'Thumb #2 Area'
  config.clear_sidebar_sections!
  actions :all, :except => [:new, :destroy]

  form do |f|
    f.inputs "Images", :multipart => true do
      f.input :one, label: '#1 Image', hint: 'Must be 143x143'
      f.input :first_article_id,
              label: '#1 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :two, label: '#2 Image'
      f.input :second_article_id,
              label: '#2 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :three, label: '#3 Image'
      f.input :third_article_id,
              label: '#3 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :four, label: '#4 Image'
      f.input :fourth_article_id,
              label: '#4 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :five, label: '#5 Image'
      f.input :fifth_article_id,
              label: '#5 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :six, label: '#6 Image'
      f.input :sixth_article_id,
              label: '#6 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :preview, :as => :second_thumb
    end

    f.buttons
  end

    index do
    column "Image #1" do |main_image|
      image_tag main_image.one.url
    end

    column "Image #2" do |main_image|
      image_tag main_image.two.url
    end

    column "Image #3" do |main_image|
      image_tag main_image.three.url
    end

    column "Image #4" do |main_image|
      image_tag main_image.four.url
    end

    column "Image #5" do |main_image|
      image_tag main_image.five.url
    end

    column "Image #6" do |main_image|
      image_tag main_image.six.url
    end
  end

  controller do
    def show
      show! do |format|
        format.html { redirect_to admin_hp_second_thumbs_path }
      end
    end
  end

  sidebar " " do
    raise "More than one Homepage resources detected. Contact the developer please." if HpSecondThumb.count > 1
    link_to 'Edit Images', edit_admin_hp_second_thumb_path(HpSecondThumb.first)
  end
end