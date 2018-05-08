require 'watir'

module Local
  class Chrome
    def initialize(headless: false)
      @switches = %w[--ignore-certificate-errors
                     --dirubocosable-prompt-on-repost
                     --disable-popup-blocking
                     --disable-translate
                     --disable-infobars]

      @switches << '--headless' if headless
    end

    def open
      Watir::Browser.new :chrome,
                         switches: switches
    end

    private

    attr_reader :switches
  end
end
