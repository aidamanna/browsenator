require 'watir'

class Firefox
  def initialize
    @options = { accept_insecure_certs: true }
  end

  def open
    Watir::Browser.new :firefox,
                       options
  end

  attr_reader :options
end
