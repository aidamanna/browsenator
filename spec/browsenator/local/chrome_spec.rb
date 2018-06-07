describe Browsenator::Local::Chrome do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Chrome' do
      @browser = Browsenator::Local::Chrome.new.open
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Chrome::Driver)
      expect(browser_type).to eql(:chrome)
    end
  end
end
