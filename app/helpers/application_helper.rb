module ApplicationHelper
  # TODO: make this more clear (bigger font? color? bold?)
  def format_date(d)
    raw d.strftime "%Y<br />%b<br />%d"
  end
end
