module Browsenator
  module Remote
    class Browserstack
      class Mobile
        class SamsungGalaxyS8 < Browserstack
          def initialize(opts = {})
            @caps = Selenium::WebDriver::Remote::Capabilities.new
            @caps['os_version'] = '7.0'
            @caps['device'] = 'Samsung Galaxy S8'
            @caps['real_mobile'] = 'true'
            @caps['deviceOrientation'] = opts[:device_orientation] || 'portrait'
            @caps['javascriptEnabled'] = 'true'
            @caps['project'] = opts[:project]
            @caps['browserstack.appium_version'] = '1.7.2'
            @caps['browserstack.local'] = (opts[:local_testing] || 'false').to_s
            @caps['browserstack.localIdentifier'] = opts[:local_identifier]
          end
        end
      end
    end
  end
end
