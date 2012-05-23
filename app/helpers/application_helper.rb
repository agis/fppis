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
end
