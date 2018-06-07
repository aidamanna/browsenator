describe Browsenator::Local::Safari do
  describe '#open' do
    after(:each) do
      @browser.quit
    end

    it 'starts Safari' do
      @browser = Browsenator::Local::Safari.new.open
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Safari::Driver)
      expect(browser_type).to eql(:safari)
    end
  end
end
