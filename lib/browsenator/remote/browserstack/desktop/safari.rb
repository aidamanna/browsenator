require_relative 'screen_size'

module Browsenator
  module Remote
    class Browserstack
      class Desktop
        class Safari < Browserstack
          include ScreenSize

          def initialize(opts = {})
            browser_version = opts[:browser_version] || '11.1'

            @caps = Selenium::WebDriver::Remote::Capabilities.new
            @caps['browser'] = 'Safari'
            @caps['browser_version'] = browser_version
            @caps['os'] = 'OS X'
            @caps['os_version'] = @@os_version[browser_version]
            @caps['resolution'] = screen_resolution(opts[:screen_width], opts[:screen_height])
            @caps['project'] = opts[:project]
            @caps['browserstack.local'] = opts[:local_testing].to_s
            @caps['browserstack.localIdentifier'] = opts[:local_identifier]
          end

          @@os_version = {
            '11.1' => 'High Sierra',
            '10.1' => 'Sierra',
            '9.1' => 'El Capitan',
            '8.0' => 'Yosemite',
            '7.1' => 'Mavericks',
            '6.2' => 'Mountain Lion',
            '6.0' => 'Lion',
            '5.1' => 'Snow Leopard'
          }
        end
      end
    end
  end
end
