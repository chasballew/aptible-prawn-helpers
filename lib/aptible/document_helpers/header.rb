module Aptible
  module DocumentHelpers
    module Header
      # rubocop:disable MethodLength
      def header(title, options = {})
        header_box do
          formatted_text [{
            text: title,
            color: '003366',
            size: 30,
            styles: [:bold],
            font: 'Proxima Nova'
          }],
                         valign: :center
          add_dest title, dest_fit
        end

        closed = options[:closed] || false
        outline.define do
          section(title, destination: page_number, closed: closed) do
          end
        end
      end

      def header_box(&block)
        box_margin = 36
        background_color = 'eef6fe'
        reset_default_font_color = '333333'

        bounding_box([-bounds.absolute_left, cursor + 50],
                     width: bounds.absolute_left + bounds.absolute_right,
                     height: box_margin * 2) do
          fill_color background_color
          fill_rectangle(
            [bounds.left, bounds.top],
            bounds.right,
            bounds.top - bounds.bottom
          )
          fill_color reset_default_font_color
          # pass the block and render the text
          indent(50, &block)
        end
        # move_down(20)
      end
      # rubocop:enable MethodLength
    end
  end
end
