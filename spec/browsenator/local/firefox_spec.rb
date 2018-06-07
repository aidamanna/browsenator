describe Browsenator::Local::Firefox do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Firefox' do
      @browser = Browsenator::Local::Firefox.new.open
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Firefox::Driver)
      expect(browser_type).to eql(:firefox)
    end
  end
end
