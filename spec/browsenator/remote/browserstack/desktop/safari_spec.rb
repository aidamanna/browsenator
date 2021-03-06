describe Browsenator::Remote::Browserstack::Desktop::Safari do
  describe '#open' do
    after(:each) do
      @browser.quit
    end

    it 'starts Safari version 11.1 in a Mac when no version is specified' do
      @browser = described_class.new(project: 'Test').open
      browser_type = @browser.driver.capabilities.browser_name
      browser_version = @browser.driver.capabilities.version
      operating_system = @browser.driver.capabilities.platform

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Remote::Driver)
      expect(browser_type).to eql('safari')
      expect(browser_version).to match(/^13605/)
      expect(operating_system).to match(/mac/)
    end

    it 'starts Safari version 10.1 in Mac when that version is specified' do
      @browser = described_class.new(project: 'Test', browser_version: '10.1').open
      browser_type = @browser.driver.capabilities.browser_name
      browser_version = @browser.driver.capabilities.version
      operating_system = @browser.driver.capabilities.platform

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Remote::Driver)
      expect(browser_type).to eql('safari')
      expect(browser_version).to match(/^12603/)
      expect(operating_system).to match(/mac/)
    end
  end
end
