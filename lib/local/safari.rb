require 'watir'

class Safari
  def open
    Watir::Browser.new :safari
  end
end
