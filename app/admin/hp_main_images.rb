ActiveAdmin.register HpMainImage do
  menu :parent => "Homepage", :label => 'Main Image Area'
  config.clear_sidebar_sections!
  actions :all, :except => [:new, :show, :destroy]

  form do |f|
    f.inputs "Images", :multipart => true do
      f.input :rotate_delay, label: 'Rotate Delay (in milliseconds)', hint: 'Hint: can be negative'

      f.input :one, label: '#1 Image', hint: f.template.image_tag(f.object.one.url(:thumb))
      f.input :first_article_id,
              label: '#1 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :two, label: '#2 Image', hint: f.template.image_tag(f.object.two.url(:thumb))
      f.input :second_article_id,
              label: '#2 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :three, label: '#3 Image', hint: f.template.image_tag(f.object.three.url(:thumb))
      f.input :third_article_id,
              label: '#3 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :four, label: '#4 Image', hint: f.template.image_tag(f.object.four.url(:thumb))
      f.input :fourth_article_id,
              label: '#4 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :five, label: '#5 Image', hint: f.template.image_tag(f.object.five.url(:thumb))
      f.input :fifth_article_id,
              label: '#5 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]

      f.input :six, label: '#6 Image', hint: f.template.image_tag(f.object.six.url(:thumb))
      f.input :sixth_article_id,
              label: '#6 Link',
              :as => :select,
              :collection => Hash[Post.published.map{|b| [b.story_title,b.id]}]
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

  sidebar " " do
    raise "More than one Homepage resources detected. Contact the developer please." if HpMainImage.count > 1
    link_to 'Edit Images', edit_admin_hp_main_image_path(HpMainImage.first)
  end
end