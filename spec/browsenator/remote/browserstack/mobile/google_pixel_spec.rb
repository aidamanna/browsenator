describe Browsenator::Remote::Browserstack::Mobile::GooglePixel do
  describe '#open' do
    after(:each) do
      @browser.quit
    end

    it 'starts Chrome in a linux device' do
      @browser = described_class.new(project: 'Test').open
      browser_type = @browser.driver.capabilities.browser_name
      operating_system = @browser.driver.capabilities.platform

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Remote::Driver)
      expect(browser_type).to eql('chrome')
      expect(operating_system).to match('linux')
    end
  end
end
