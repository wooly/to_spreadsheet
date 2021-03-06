require 'nokogiri'
require 'to_spreadsheet/action_pack_renderers'
require 'to_spreadsheet/mime_types'
require 'to_spreadsheet/version'
require 'to_spreadsheet/helpers'
require 'to_spreadsheet/context'

module ToSpreadsheet
  class << self
    def theme(name, &formats)
      @themes ||= {}
      if formats
        @themes[name] = formats
      else
        @themes[name]
      end
    end
  end
end

require 'to_spreadsheet/themes/default'
ToSpreadsheet::Context.global.format_xls ToSpreadsheet.theme(:default)