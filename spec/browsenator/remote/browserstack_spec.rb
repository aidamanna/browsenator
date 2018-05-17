describe Browsenator::Remote::Browserstack do
  describe '.for' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Chrome when browser is :chrome' do
      @browser = Browsenator::Remote::Browserstack.for :chrome, project: 'Test'
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:chrome)
    end

    it 'starts Safari when browser is :safari' do
      @browser = Browsenator::Remote::Browserstack.for :safari, project: 'Test'
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:safari)
    end

    it 'throws an error when browser is unknown' do
      expect { Browsenator::Remote::Browserstack.for :chromium }.to raise_error(ArgumentError)
    end
  end
end
