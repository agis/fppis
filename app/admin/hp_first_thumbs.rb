ActiveAdmin.register HpFirstThumb do
  menu :parent => "Homepage", :label => 'Thumb #1 Area'
  config.clear_sidebar_sections!
  actions :all, :except => [:new, :show, :destroy]

  # OPTIMIZE: Refactor to use a hint instead of input for previewing (see HpMainImages)

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

      f.input :preview, :as => :first_thumb

    end

    f.buttons
  end

    index do
    column "Image #1" do |first_thumb|
      image_tag first_thumb.one.url
    end

    column "Image #2" do |first_thumb|
      image_tag first_thumb.two.url
    end

    column "Image #3" do |first_thumb|
      image_tag first_thumb.three.url
    end

    column "Image #4" do |first_thumb|
      image_tag first_thumb.four.url
    end

    column "Image #5" do |first_thumb|
      image_tag first_thumb.five.url
    end

    column "Image #6" do |first_thumb|
      image_tag first_thumb.six.url
    end
  end

  sidebar " " do
    raise "More than one Homepage resources detected. Contact the developer please." if HpFirstThumb.count > 1
    # OPTIMIZE: Make this a button instead and also on all the other sidebars
    link_to 'Edit Images', edit_admin_hp_first_thumb_path(HpFirstThumb.first)
  end
end