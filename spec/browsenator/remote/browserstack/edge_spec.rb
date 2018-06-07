describe Browsenator::Remote::Browserstack::Edge do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Edge' do
      @browser = Browsenator::Remote::Browserstack::Edge.new(project: 'Test').open
      browser_type = @browser.driver.capabilities.browser_name

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Remote::Driver)
      expect(browser_type).to eql('MicrosoftEdge')
    end
  end
end
