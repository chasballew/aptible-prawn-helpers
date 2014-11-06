module Aptible
  module DocumentHelpers
    module TableOfContents
      # rubocop:disable MethodLength
      def table_of_contents
        go_to_page 2
        fill_color '333333'
        font('Proxima Nova')
        header_box do
          font('Proxima Nova', size: 30, style: :bold) do
            text('Table of Contents', valign: :center, color: '003366')
          end
        end
        # text 'Table of Contents', size: 27.812, style: :bold, align: :center
        move_down(15)

        font('Proxima Nova', size: 13) do
          column_box([0, cursor], columns: 2, width: bounds.width) do
            last_title ||= ''
            # don't bump the first heading
            bump_heading = false
            outline.items.keys.each do |key|
              # Section headings are strings
              if key.class == String
                if key != last_title
                  move_down(3) if bump_heading
                  text key,
                       style: :bold,
                       leading: 3
                  move_down(2)
                end
                # bump each one after the first
                bump_heading = true
              else
                # Page references are hashes
                last_title = key.fetch(:title)
                indent(40) do
                  text "#{key.fetch(:title)}" \
                       "#{@nbsp}–#{@nbsp}" \
                       "p.#{@nbsp}#{key.fetch(:destination) - 2 }",
                       style: :italic,
                       size: 11,
                       indent_paragraphs: -20
                end
              end
            end
          end
        end
      end
      # rubocop:enable MethodLength
    end
  end
end
