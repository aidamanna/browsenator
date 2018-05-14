describe Local::Firefox do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Firefox with the default window size' do
      @browser = Local::Firefox.new.open
      browser_type = @browser.driver.browser
      window_size = @browser.window.size.values

      expect(browser_type).to eql(:firefox)
      expect(window_size).to eql([1024, 640])
    end
  end
end
