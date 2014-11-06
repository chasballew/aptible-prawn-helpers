module Aptible
  module DocumentHelpers
    module PageNumbers
      # rubocop:disable MethodLength
      def page_numbers
        # Number portrait pages pages
        font 'Proxima Nova'
        string = 'Page <page>'
        options = {
          at: [bounds.right - 150, -22],
          width: 150,
          align: :right,
          start_count_at: 1,
          size: 10,
          color: '999999',
          page_filter: lambda do |page|
                         (!page.in?(1..2)) &&
                         (!page.in?(@landscape_pages))
                       end
        }
        number_pages string, options

        # Number landscape pages
        options = {
          at: [bounds.right + 25, -22],
          width: 150,
          align: :right,
          start_count_at: @landscape_pages[0] - 2,
          size: 10,
          color: '999999',
          page_filter: lambda do |page|
                         page.in?(@landscape_pages)
                       end
        }
        number_pages string, options
        font 'Georgia'
      end
      # rubocop:enable MethodLength
    end
  end
end
