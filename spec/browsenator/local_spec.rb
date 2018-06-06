describe Browsenator::Local do
  describe '.for' do
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
      safari = double(:safari)
      expect(Browsenator::Local::Safari).to receive(:new).with(no_args).and_return(safari)
      expect(safari).to receive(:open)

      Browsenator::Local.for :safari
    end

    it 'throws an error when browser is unknown' do
      expect { Browsenator::Local.for :chromium }.to raise_error(ArgumentError)
    end
  end
end
