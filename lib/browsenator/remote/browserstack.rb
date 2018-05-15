module Browsenator
  module Remote
    module Browserstack
      def self.for(browser)
        case browser
        when :chrome
          Chrome.new.open
        else
          raise ArgumentError, "Unknown Browserstack browser: #{browser.inspect}"
        end
      end
    end
  end
end
