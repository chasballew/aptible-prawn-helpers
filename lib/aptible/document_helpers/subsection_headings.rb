module Aptible
  module DocumentHelpers
    module SubsectionHeadings
      # rubocop:disable MethodLength
      def subsection_heading(heading_title, section_title)
        move_down 20
        formatted_text [
          text: heading_title,
          anchor: heading_title,
          font: 'Proxima Nova',
          size: 20,
          styles: [:bold],
          color: '003366'
        ]

        move_down 10

        outline.add_subsection_to(section_title) do
          # Add references for PDF navigation
          outline.section(title: heading_title, destination: page_number)
          # Add page titles and numbers for Table of Contents
          outline.page(title: heading_title, destination: page_number)
        end
      end
      # rubocop:enable MethodLength
    end
  end
end
