require_relative 'browserstack/desktop/chrome'
require_relative 'browserstack/desktop/safari'
require_relative 'browserstack/desktop/edge'
require_relative 'browserstack/desktop/ie'

module Browsenator
  module Remote
    module Browserstack
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
            ie: Desktop::IE
          }
        end
      end
    end
  end
end
