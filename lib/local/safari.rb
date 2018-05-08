require 'watir'

module Local
  class Safari
    def open
      Watir::Browser.new :safari
    end
  end
end
