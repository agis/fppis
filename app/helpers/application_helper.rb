module ApplicationHelper
  def format_date(d)
    d.strftime "%B %d, %Y".html_safe
  end

  def smart_truncate(s, opts = {})
    opts = {:words => 12}.merge(opts)
    a = s.split(/[ ]+/)
    n = opts[:words]
    a[0...n].join(' ') + (a.size > n ? '...' : '')
  end

  # FIXME: Fix this helper to render all images and links
  def main_img(image)
    if image.first_article_id.nil?
      image_tag image.one.url
    else
      link_to post_path(image.first_article_id) do
        image_tag image.one.url
      end
    end
  end

  def thumb_img(image)
    if image.first_article_id.nil?
      "<img src=\"#{image.one.url}\" style=\"margin-bottom: 5px;\" />".html_safe
    else
      link_to post_path(image.first_article_id) do
        "<img src=\"#{image.one.url}\" style=\"margin-bottom: 5px;\" />".html_safe
      end
    end
  end

end
