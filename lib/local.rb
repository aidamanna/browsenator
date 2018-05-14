module Local
  def self.for(browser, opts = {})
    case browser
    when :chrome
      Chrome.new(opts).open
    when :firefox
      Firefox.new(opts).open
    when :safari
      Safari.new.open
    else
      raise ArgumentError, "Unknown browser: #{browser.inspect}"
    end
  end
end
