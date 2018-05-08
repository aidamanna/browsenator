module Local
  def self.for(browser, headless: false)
    case browser
    when :chrome
      Chrome.new(headless: headless).open
    when :firefox
      Firefox.new(headless: headless).open
    when :safari
      Safari.new.open
    else
      raise ArgumentError, "Unknown browser: #{browser.inspect}"
    end
  end
end
