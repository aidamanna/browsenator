require_relative 'browserstack/chrome'
require_relative 'browserstack/safari'

module Browsenator
  module Remote
    module Browserstack
      def self.for(browser, opts = {})
        case browser
        when :chrome
          Chrome.new(opts).open
        when :safari
          Safari.new(opts).open
        else
          raise ArgumentError, "Unknown Browserstack browser: #{browser.inspect}"
        end
      end
    end
  end
end
