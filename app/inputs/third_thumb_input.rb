class ThirdThumbInput
  include Formtastic::Inputs::Base
  def to_html
    "<img src=\"#{HpThirdThumb.find(1).one.url}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{HpThirdThumb.find(1).two.url}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{HpThirdThumb.find(1).three.url}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{HpThirdThumb.find(1).four.url}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{HpThirdThumb.find(1).five.url}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{HpThirdThumb.find(1).six.url}\" style=\"margin: 15px;\" />"
  end
end