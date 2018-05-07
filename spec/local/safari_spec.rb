describe Safari do
  describe '#open' do
    after(:each) do
      @browser.quit
    end

    it 'opens a safari browser' do
      @browser = Safari.new.open
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:safari)
    end
  end
end
