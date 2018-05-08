describe Local::Firefox do
  describe '#open' do
    after(:each) do
      @browser.quit
    end

    it 'opens a firefox browser' do
      @browser = Local::Firefox.new.open
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:firefox)
    end
  end
end
