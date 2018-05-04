describe Chrome do
  describe '#open' do
    it 'opens a chrome browser' do
      browser = Chrome.new.open
      browser_type = browser.driver.browser

      expect(browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:chrome)
    end
  end
end
