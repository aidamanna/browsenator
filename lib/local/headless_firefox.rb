require 'watir'

class HeadlessFirefox < Firefox
  def initialize
    super
    @options[:headless] = true
  end
end
