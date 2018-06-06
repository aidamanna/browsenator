describe Browsenator::Local do
  describe '.for' do
    after(:each) do
      @browser&.quit
    end

    it 'starts Chrome when browser is :chrome' do
      chrome = double(:chrome)
      expect(Browsenator::Local::Chrome).to receive(:new).with({}).and_return(chrome)
      expect(chrome).to receive(:open)

      Browsenator::Local.for :chrome
    end

    it 'starts Chrome when browser is :chrome and passing options' do
      chrome = double(:chrome)
      opts = { headless: true }
      expect(Browsenator::Local::Chrome).to receive(:new).with(opts).and_return(chrome)
      expect(chrome).to receive(:open)

      Browsenator::Local.for(:chrome, opts)
    end

    it 'starts Firefox when browser is :firefox' do
      firefox = double(:firefox)
      expect(Browsenator::Local::Firefox).to receive(:new).with({}).and_return(firefox)
      expect(firefox).to receive(:open)

      Browsenator::Local.for :firefox
    end

    it 'starts Firefox when browser is :firefox and passing options' do
      firefox = double(:firefox)
      opts = { headless: true }
      expect(Browsenator::Local::Firefox).to receive(:new).with(opts).and_return(firefox)
      expect(firefox).to receive(:open)

      Browsenator::Local.for(:firefox, opts)
    end

    it 'starts Safari when browser is :safari' do
      @browser = Browsenator::Local.for :safari
      browser_type = @browser.driver.browser

      expect(@browser).to be_a(Watir::Browser)
      expect(browser_type).to eql(:safari)
    end

    it 'throws an error when browser is unknown' do
      expect { Browsenator::Local.for :chromium }.to raise_error(ArgumentError)
    end
  end
end
