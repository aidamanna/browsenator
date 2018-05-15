describe Browsenator::Local::Safari do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Safari with the default window size' do
      @browser = Browsenator::Local::Safari.new.open
      browser_type = @browser.driver.browser
      window_size = @browser.window.size.values

      expect(browser_type).to eql(:safari)
      expect(window_size).to eql([1024, 640])
    end
  end
end
