module ApplicationHelper
  def format_date(d)
    raw d.strftime "%B %d, %Y"
  end

  def smart_truncate(s, opts = {})
    opts = {:words => 12}.merge(opts)
    if opts[:sentences]
      return s.split(/\.(\s|$)+/)[0, opts[:sentences]].map{|s| s.strip}.join('. ') + '.'
    end
    a = s.split(/[ ]+/)
    n = opts[:words]
    a[0...n].join(' ') + (a.size > n ? '...' : '')
  end

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
      raw "<img src=\"#{image.one.url}\" style=\"margin-bottom: 5px;\" />"
    else
      link_to post_path(image.first_article_id) do
        raw "<img src=\"#{image.one.url}\" style=\"margin-bottom: 5px;\" />"
      end
    end
  end

end
