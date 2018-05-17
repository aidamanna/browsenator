describe Browsenator::Remote::Browserstack::Safari do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Safari in a Mac' do
      @browser = Browsenator::Remote::Browserstack::Safari.new(project: 'Test').open
      browser_type = @browser.driver.capabilities.browser_name
      platform = @browser.driver.capabilities.platform

      expect(browser_type).to eql('safari')
      expect(platform).to match(/mac/)
    end
  end
end
