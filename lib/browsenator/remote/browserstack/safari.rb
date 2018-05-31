require 'watir'
require_relative 'browserstack_credentials'
require_relative 'screen_size'
require_relative 'window_size'

module Browsenator
  module Remote
    module Browserstack
      class Safari
        include BrowserstackCredentials
        include ScreenSize
        include WindowSize

        def initialize(opts = {})
          browser_version = opts[:browser_version] || '11.1'

          caps = Selenium::WebDriver::Remote::Capabilities.new
          caps['browser'] = 'Safari'
          caps['browser_version'] = browser_version
          caps['os'] = 'OS X'
          caps['os_version'] = @@os_version[browser_version]
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
