require 'aptible/document_helpers/change_layout_format'
require 'aptible/document_helpers/font_loader'
require 'aptible/document_helpers/footer'
require 'aptible/document_helpers/header'
require 'aptible/document_helpers/page_numbers'
require 'aptible/document_helpers/pretty_table'
require 'aptible/document_helpers/subsection_headings'
require 'aptible/document_helpers/table_of_contents'
require 'aptible/document_helpers/watermark'

module Aptible
  module DocumentHelpers
    include Aptible::DocumentHelpers::FontLoader
    include Aptible::DocumentHelpers::Header
    include Aptible::DocumentHelpers::Footer
    include Aptible::DocumentHelpers::PageNumbers
    include Aptible::DocumentHelpers::SubsectionHeadings
    include Aptible::DocumentHelpers::PrettyTable
    include Aptible::DocumentHelpers::Watermark
    include Aptible::DocumentHelpers::ChangeLayoutFormat
    include Aptible::DocumentHelpers::TableOfContents
  end
end
