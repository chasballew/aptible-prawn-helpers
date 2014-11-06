module Aptible
  module DocumentHelpers
    module Watermark
      # rubocop:disable MethodLength
      def watermarked(stamp_type = 'CONFIDENTIAL', format = :portrait, _block)
        # Tying the definition to the current format helps ensure
        # the watermark is created with the right margin boxes
        define_watermarks(format)

        stamp_name = "#{stamp_type} - #{format}"

        # Watermark the current page
        stamp stamp_name

        # Watermark additional pages
        on_page_create do
          stamp stamp_name
          @landscape_pages.push(page_number) if format == :landscape
        end
        yield if block_given?
        # clears the callback
        on_page_create
      end

      def define_watermarks(format = :portrait)
        @defined_formats ||= []
        # Catch strings
        format = format.to_sym
        return if @defined_formats.include?(format)

        case format
        when :portrait
          create_confidential_stamp(48, 0, -60, format)
        when :landscape
          create_confidential_stamp(15, 130, 70, format)
        end
        @defined_formats << format
      end

      def create_confidential_stamp(rotation, main_y_pos, sub_y_pos, format)
        create_stamp("CONFIDENTIAL - #{format}") do
          rotate(rotation, origin: [0, 0]) do
            fill_color 'f3f3f3'
            font('Proxima Nova', style: :bold, size: 100) do
              draw_text 'CONFIDENTIAL', at: [40, main_y_pos]
            end
            font('Proxima Nova', style: :normal, size: 70) do
              draw_text 'Do Not Distribute', at: [130, sub_y_pos]
            end
          end
        end
      end
      # rubocop:enable MethodLength
    end
  end
end
