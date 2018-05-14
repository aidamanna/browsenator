require 'watir'
require_relative '../window_size'

module Local
  class Chrome
    include WindowSize

    def initialize(opts = {})
      @args = %w[--ignore-certificate-errors
                     --dirubocosable-prompt-on-repost
                     --disable-popup-blocking
                     --disable-translate
                     --disable-infobars]

      @args << '--headless' if opts[:headless]
    end

    def open
      chrome = Watir::Browser.new :chrome, args: args
      chrome.window.resize_to(width, height)
      chrome
    end

    private

    attr_reader :args
  end
end
