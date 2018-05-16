require_relative 'browserstack/chrome'
require_relative 'browserstack/safari'

module Browsenator
  module Remote
    module Browserstack
      def self.for(browser)
        case browser
        when :chrome
          Chrome.new.open
        when :safari
          Safari.new.open
        else
          raise ArgumentError, "Unknown Browserstack browser: #{browser.inspect}"
        end
      end
    end
  end
end
