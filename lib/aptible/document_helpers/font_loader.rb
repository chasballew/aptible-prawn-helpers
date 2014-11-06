module Aptible
  module DocumentHelpers
    module FontLoader
      # rubocop:disable MethodLength
      def load_fonts
        font_families.update(
          'Georgia' => {
            normal: 'data/fonts/Georgia.ttf',
            italic: 'data/fonts/Georgia Italic.ttf',
            bold: 'data/fonts/Georgia Bold.ttf',
            bold_italic: 'data/fonts/Georgia Bold Italic.ttf'
          }
        )
        font_families.update(
          'Proxima Nova' => {
            normal: 'data/fonts/proxima_nova.ttf',
            italic: 'data/fonts/proxima_nova_italic.ttf',
            light: 'data/fonts/proxima_nova_light.ttf',
            light_italic: 'data/fonts/proxima_nova_light_italic.ttf',
            bold: 'data/fonts/proxima_nova_bold.ttf',
            bold_italic: 'data/fonts/proxima_nova_bold_italic.ttf'
          }
        )
        font 'Georgia'
      end
      # rubocop:enable MethodLength
    end
  end
end
