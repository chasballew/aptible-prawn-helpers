module Aptible
  module DocumentHelpers
    module ChangeLayoutFormat
      def change_layout_format(format)
        case format
        when :portrait
          start_new_page(layout: :portrait)
          on_page_create
        when :landscape
          start_new_page(layout: :landscape)
          # push the current page
          @landscape_pages.push(page_number)
          # push additional pages in the watermark hook
        end
      end
    end
  end
end
