describe Browsenator::Local::Firefox do
  describe '#open' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Firefox' do
      @browser = Browsenator::Local::Firefox.new.open
      browser_type = @browser.driver.browser

      expect(browser_type).to eql(:firefox)
    end
  end
end
