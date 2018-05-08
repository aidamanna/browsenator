require 'watir'

class Firefox
  def initialize(headless: false)
    @options = { accept_insecure_certs: true }

    @options[:headless] = true if headless
  end

  def open
    Watir::Browser.new :firefox,
                       options
  end

  attr_reader :options
end
