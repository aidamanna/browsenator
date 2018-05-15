describe Browsenator do
  describe '.for' do
    after(:each) do
      @browser&.quit
    end

    it 'starts local Chrome when browser is :chrome and started locally' do
      @browser = Browsenator.for :chrome, remote: false
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:chrome)
    end
  end
end
