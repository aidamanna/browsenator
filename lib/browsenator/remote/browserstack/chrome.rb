require 'watir'
require_relative 'browserstack_credentials'
require_relative 'screen_size'

module Browsenator
  module Remote
    module Browserstack
      class Chrome
        include BrowserstackCredentials
        include ScreenSize

        def initialize(opts = {})
          caps = Selenium::WebDriver::Remote::Capabilities.new
          caps['browser'] = 'Chrome'
          caps['browser_version'] = opts[:browser_version] || '66.0'
          caps['os'] = 'OS X'
          caps['os_version'] = 'High Sierra'
          caps['resolution'] = screen_resolution(opts[:screen_width], opts[:screen_height])
          caps['project'] = opts[:project]
          caps['browserstack.local'] = opts[:local_testing].to_s

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
