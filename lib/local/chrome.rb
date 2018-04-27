require 'watir'

class Chrome
  def initialize
    @switches = %w[--ignore-certificate-errors
                   --dirubocosable-prompt-on-repost
                   --disable-popup-blocking
                   --disable-translate
                   --disable-infobars]
  end

  def open
    Watir::Browser.new :chrome,
                       switches: switches
  end

  private

  attr_reader :switches
end
