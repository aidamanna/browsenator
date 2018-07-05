require_relative 'screen_size'

module Browsenator
  module Remote
    class Browserstack
      class Desktop
        class Chrome < Browserstack
          include ScreenSize

          def initialize(opts = {})
            @caps = Selenium::WebDriver::Remote::Capabilities.new
            @caps['browser'] = 'Chrome'
            @caps['browser_version'] = opts[:browser_version] || '66.0'
            @caps['os'] = 'OS X'
            @caps['os_version'] = 'High Sierra'
            @caps['resolution'] = screen_resolution(opts[:screen_width], opts[:screen_height])
            @caps['project'] = opts[:project]
            @caps['browserstack.local'] = opts[:local_testing].to_s
            @caps['browserstack.localIdentifier'] = opts[:local_identifier]
          end
        end
      end
    end
  end
end
