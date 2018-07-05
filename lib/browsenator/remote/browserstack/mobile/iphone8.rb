module Browsenator
  module Remote
    class Browserstack
      class Mobile
        class Iphone8 < Browserstack
          def initialize(opts = {})
            @caps = Selenium::WebDriver::Remote::Capabilities.new
            @caps['os_version'] = '11.0'
            @caps['device'] = 'iPhone 8'
            @caps['real_mobile'] = 'true'
            @caps['deviceOrientation'] = opts[:device_orientation] || 'portrait'
            @caps['project'] = opts[:project]
            @caps['browserstack.appium_version'] = '1.7.0'
            @caps['browserstack.local'] = (opts[:local_testing] || 'false').to_s
            @caps['browserstack.localIdentifier'] = opts[:local_identifier]
          end
        end
      end
    end
  end
end
