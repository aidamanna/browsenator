describe HeadlessChrome do
  describe '#open' do
    after(:each) do
      @browser.quit
    end

    it 'starts a headless chrome browser' do
      @browser = HeadlessChrome.new.open
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:chrome)
    end
  end
end
