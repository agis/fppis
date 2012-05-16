module ApplicationHelper
  def format_date(d)
    raw d.strftime "%Y<br />%b<br />%d"
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
end
