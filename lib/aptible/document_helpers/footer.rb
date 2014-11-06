module Aptible
  module DocumentHelpers
    module Footer
      # rubocop:disable MethodLength
      def footer
        options = {
          at: [0, -10],
          color: '999999',
          size: 10,
          page_filter: ->(page) { page != 1 }
        }
        font 'Proxima Nova'
        number_pages "#{@risk_analysis.organization_name}", options
        number_pages 'NIST SP 800-30 Rev 1 Risk Analysis',
                     options.merge(at: [0, -22])
        number_pages 'Prepared with assistance from Aptible',
                     options.merge(at: [0, -34])
        font 'Georgia'
      end
      # rubocop:enable MethodLength
    end
  end
end
