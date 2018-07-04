require_relative 'browserstack/desktop/chrome'
require_relative 'browserstack/desktop/safari'
require_relative 'browserstack/desktop/edge'
require_relative 'browserstack/desktop/ie'

module Browsenator
  module Remote
    module Browserstack
      def self.for(platform, opts = {})
        case platform
        when :chrome
          Desktop::Chrome.new(opts).open
        when :safari
          Desktop::Safari.new(opts).open
        when :edge
          Desktop::Edge.new(opts).open
        when :ie
          Desktop::IE.new(opts).open
        else
          raise ArgumentError, "Unknown Browserstack browser: #{platform.inspect}"
        end
      end
    end
  end
end
