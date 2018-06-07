describe Browsenator do
  describe '.for' do
    after(:each) do
      @browser&.quit
    end

    it 'starts local Chrome when browser is :chrome and remote is not provided' do
      expect(Browsenator::Local).to receive(:for).with(:chrome, {})

      Browsenator.for :chrome
    end

    it 'starts local Chrome when browser is :chrome and remote is false' do
      expect(Browsenator::Local).to receive(:for).with(:chrome, {})

      Browsenator.for(:chrome, remote: false)
    end

    it 'starts remote Chrome when browser is :chrome and remote is Browserstack' do
      @browser = Browsenator.for :chrome, remote: :browserstack, project: 'Test'
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(@browser.driver).to be_a(Selenium::WebDriver::Remote::Driver)
      expect(browser_type).to eql(:chrome)
    end

    it 'throws an error when remote is unknown' do
      expect { Browsenator.for :chrome, remote: :saucelabs }.to raise_error(ArgumentError)
    end
  end
end
