require 'watir'
require_relative 'browserstack_credentials'

module Browsenator
  module Remote
    module Browserstack
      class Safari
        include BrowserstackCredentials

        def initialize
          caps = Selenium::WebDriver::Remote::Capabilities.new
          caps['browser'] = 'Safari'
          caps['browser_version'] = '11.1'
          caps['os'] = 'OS X'
          caps['os_version'] = 'High Sierra'
          caps['resolution'] = '1024x768'

          @options = {
            url: "http://#{username}:#{access_key}@hub-cloud.browserstack.com/wd/hub",
            desired_capabilities: caps
          }
        end

        def open
          Watir::Browser.new :remote, options
        end

        private

        attr_reader :options
      end
    end
  end
end
