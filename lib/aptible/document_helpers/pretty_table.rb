module Aptible
  module DocumentHelpers
    module PrettyTable
      # rubocop:disable MethodLength
      def pretty_table(data, col_widths, options = {})
        font_size 11

        # Widths should add to 510 for portrait, 690 for landscape

        table_options = {
          header: true,
          column_widths: col_widths,
          cell_style: { inline_format: true }
        }

        table(data, table_options) do
          cells.padding = 8
          cells.border_color = '999999'
          row(0).background_color = 'ffcc99'
          row(0).font_style = :bold
          row(0).valign = :center

          centering_option = options[:col_center] || ''
          column(centering_option).align = :center unless centering_option == ''

          bolding_option = options[:col_bold] || ''
          column(bolding_option).font_style = :bold unless bolding_option == ''
        end
        font_size 12
      end
      # rubocop:enable MethodLength
    end
  end
end
