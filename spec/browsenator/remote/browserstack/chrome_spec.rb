describe Browsenator::Remote::Browserstack::Chrome do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Chrome version 66 in a Mac' do
      @browser = Browsenator::Remote::Browserstack::Chrome.new.open
      browser_type = @browser.driver.capabilities.browser_name
      browser_version = @browser.driver.capabilities.version
      platform = @browser.driver.capabilities.platform

      expect(browser_type).to eql('chrome')
      expect(browser_version).to match(/^66/)
      expect(platform).to match(/mac/)
    end
  end
end
