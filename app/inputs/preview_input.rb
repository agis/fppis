class PreviewInput
  include Formtastic::Inputs::Base
  def to_html
    "<img src=\"#{FpMainImage.find(1).one.url(:thumb)}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{FpMainImage.find(1).two.url(:thumb)}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{FpMainImage.find(1).three.url(:thumb)}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{FpMainImage.find(1).four.url(:thumb)}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{FpMainImage.find(1).five.url(:thumb)}\" style=\"margin: 15px;\" />" +
    "<img src=\"#{FpMainImage.find(1).six.url(:thumb)}\" style=\"margin: 15px;\" />"
  end
end