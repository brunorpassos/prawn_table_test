require 'prawn/table'
require 'prawn'

Prawn::Document.generate(
  'teste.pdf',
  page_size: 'A4') do

  font_families.update("Verdana" => {
    :normal => "./fonts/Verdana.ttf",
    :italic => "./fonts/Verdana Italic.ttf",
    :bold => "./fonts/Verdana Bold.ttf",
    :bold_italic => "./fonts/Verdana Bold Italic.ttf"
   })

  font('Verdana') do
    t = make_table([["first row", "blahh"], ["second-row"]], width: bounds.width)
    t.draw
  end
end
