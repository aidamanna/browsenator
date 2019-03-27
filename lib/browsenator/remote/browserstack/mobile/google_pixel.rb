module Browsenator
  module Remote
    class Browserstack
      class Mobile
        class GooglePixel < Browserstack
          def initialize(opts = {})
            @caps = Selenium::WebDriver::Remote::Capabilities.new
            @caps['os_version'] = '8.0'
            @caps['device'] = 'Google Pixel'
            @caps['real_mobile'] = 'true'
            @caps['deviceOrientation'] = opts[:device_orientation] || 'portrait'
            @caps['javascriptEnabled'] = 'true'
            @caps['project'] = opts[:project]
            @caps['browserstack.appium_version'] = '1.9.1'
            @caps['browserstack.local'] = (opts[:local_testing] || 'false').to_s
            @caps['browserstack.localIdentifier'] = opts[:local_identifier]
          end
        end
      end
    end
  end
end
