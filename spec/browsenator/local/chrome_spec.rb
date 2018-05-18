describe Browsenator::Local::Chrome do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Chrome' do
      @browser = Browsenator::Local::Chrome.new.open
      browser_type = @browser.driver.browser

      expect(browser_type).to eql(:chrome)
    end
  end
end
