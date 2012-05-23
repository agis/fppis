module PagesHelper
  def slide_title(link)
    "#{link.country} #{link.city}"
  end

  def slide_category_title(link)
    raw "#{link.story_title} <span class=\"slide-subtitle\">#{link.story_subtitle}</span>"
  end

  def slide_image(counter, object, size = '143x143')
    case counter
    when 0
      image_tag object.one.url, size: size
    when 1
      image_tag object.two.url, size: size
    when 2
      image_tag object.three.url, size: size
    when 3
      image_tag object.four.url, size: size
    when 4
      image_tag object.five.url, size: size
    when 5
      image_tag object.six.url, size: size
    end
  end
end