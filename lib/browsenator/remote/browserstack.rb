require_relative 'browserstack/browserstack_credentials'
require_relative 'browserstack/desktop/chrome'
require_relative 'browserstack/desktop/safari'
require_relative 'browserstack/desktop/edge'
require_relative 'browserstack/desktop/ie'
require_relative 'browserstack/mobile/samsung_galaxy_s8'
require_relative 'browserstack/mobile/iphone8'

module Browsenator
  module Remote
    class Browserstack
      include BrowserstackCredentials

      class << self
        def for(platform, opts = {})
          return platform_class[platform].new(opts).open if platform_class.key?(platform)
          raise ArgumentError, "Unknown Browserstack platform: #{platform.inspect}"
        end

        private

        def platform_class
          {
            chrome: Desktop::Chrome,
            safari: Desktop::Safari,
            edge: Desktop::Edge,
            ie: Desktop::IE,
            samsung_galaxy_s8: Mobile::SamsungGalaxyS8,
            iphone8: Mobile::Iphone8
          }
        end
      end

      def open
        Watir::Browser.new :remote, options
      end

      private

      attr_reader :caps

      def options
        {
          url: "http://#{username}:#{access_key}@hub-cloud.browserstack.com/wd/hub",
          desired_capabilities: caps
        }
      end
    end
  end
end
