describe Browsenator::Remote::Browserstack::IE do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end
    it 'starts IE version 11 in a Windows when no version is specified' do
      @browser = Browsenator::Remote::Browserstack::IE.new(project: 'Test').open
      browser_type = @browser.driver.capabilities.browser_name
      browser_version = @browser.driver.capabilities.version
      platform = @browser.driver.capabilities.platform

      expect(browser_type).to eql('internet explorer')
      expect(browser_version).to match(/^11/)
      expect(platform).to match(/windows/)
    end
  end
end
