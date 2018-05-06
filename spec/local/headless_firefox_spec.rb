describe HeadlessFirefox do
  describe '#open' do
    after(:each) do
      @browser.quit
    end

    it 'starts a headless firefox browser' do
      @browser = HeadlessFirefox.new.open
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:firefox)
    end
  end
end
