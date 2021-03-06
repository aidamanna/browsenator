describe Browsenator::Remote::Browserstack::Desktop::Chrome do
  describe '#open' do
    after(:each) do
      @browser.quit
    end

    it 'starts Chrome version 70 in a Mac when no version is specified' do
      @browser = described_class.new(project: 'Test').open
      browser_type = @browser.driver.capabilities.browser_name
      browser_version = @browser.driver.capabilities.version
      operating_system = @browser.driver.capabilities.platform

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Remote::Driver)
      expect(browser_type).to eql('chrome')
      expect(browser_version).to match(/^70/)
      expect(operating_system).to match(/mac/)
    end

    it 'starts Chrome version 65 in Mac when that version is specified' do
      @browser = described_class.new(project: 'Test', browser_version: '65.0',
                                     screen_width: 1280, screen_height: 960).open

      browser_type = @browser.driver.capabilities.browser_name
      browser_version = @browser.driver.capabilities.version
      operating_system = @browser.driver.capabilities.platform

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Remote::Driver)
      expect(browser_type).to eql('chrome')
      expect(browser_version).to match(/^65/)
      expect(operating_system).to match(/mac/)
    end
  end
end
