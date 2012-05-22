module PagesHelper
  def slide_title(link)
    "#{link.country} #{link.city}"
  end

  def slide_category_title(link)
    "#{link.story_title} #{link.story_subtitle}"
  end

  def slide_image(counter)
    case counter
    when 0
      image_tag @main_images.one.url, size: '650x439'
    when 1
      image_tag @main_images.two.url, size: '650x439'
    when 2
      image_tag @main_images.three.url, size: '650x439'
    when 3
      image_tag @main_images.four.url, size: '650x439'
    when 4
      image_tag @main_images.five.url, size: '650x439'
    when 5
      image_tag @main_images.six.url, size: '650x439'
    end
  end
end