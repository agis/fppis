module ApplicationHelper
  def format_date(d)
    raw d.strftime "%Y<br />%b<br />%d"
  end
end
