module PostsHelper
  def preview_image(content)
    raw /<img.+?\/>/.match(content)
  end

  def preview_content(content, n)
    content.gsub!(/(&....;)|(&.....;)/, '')
    a = strip_tags(content).split(/[ ]+/)
    a[0...n].join(' ') + (a.size > n ? '          ....' : '')
  end
end