require 'watir'

class HeadlessChrome < Chrome
  def initialize
    super
    @switches << '--headless'
  end
end
