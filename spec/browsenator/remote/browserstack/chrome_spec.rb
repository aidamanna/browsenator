describe Browsenator::Remote::Browserstack::Chrome do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Chrome version 66 in a Mac when no version is specified' do
      @browser = Browsenator::Remote::Browserstack::Chrome.new(project: 'Test').open
      browser_type = @browser.driver.capabilities.browser_name
      browser_version = @browser.driver.capabilities.version
      platform = @browser.driver.capabilities.platform

      expect(browser_type).to eql('chrome')
      expect(browser_version).to match(/^66/)
      expect(platform).to match(/mac/)
    end

    it 'starts Chrome version 65 in Mac when that version is specified' do
      @browser = Browsenator::Remote::Browserstack::Chrome.new(project: 'Test', browser_version: '65.0',
                                                               screen_width: 1280, screen_height: 960).open

      browser_type = @browser.driver.capabilities.browser_name
      browser_version = @browser.driver.capabilities.version
      platform = @browser.driver.capabilities.platform

      expect(browser_type).to eql('chrome')
      expect(browser_version).to match(/^65/)
      expect(platform).to match(/mac/)
    end
  end
end
