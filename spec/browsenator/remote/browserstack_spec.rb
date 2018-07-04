describe Browsenator::Remote::Browserstack do
  describe '.for' do
    it 'starts Chrome when platform is :chrome' do
      chrome = double(:chrome)
      expect(Browsenator::Remote::Browserstack::Desktop::Chrome).to receive(:new).with({}).and_return(chrome)
      expect(chrome).to receive(:open)

      described_class.for :chrome
    end

    it 'starts Chrome when platform is :chrome and passing options' do
      chrome = double(:chrome)
      opts = { project: 'Test' }
      expect(Browsenator::Remote::Browserstack::Desktop::Chrome).to receive(:new).with(opts).and_return(chrome)
      expect(chrome).to receive(:open)

      described_class.for(:chrome, opts)
    end

    it 'starts Safari when platform is :safari' do
      safari = double(:safari)
      expect(Browsenator::Remote::Browserstack::Desktop::Safari).to receive(:new).with({}).and_return(safari)
      expect(safari).to receive(:open)

      described_class.for :safari
    end

    it 'starts Safari when platform is :safari and passing options' do
      safari = double(:safari)
      opts = { project: 'Test' }
      expect(Browsenator::Remote::Browserstack::Desktop::Safari).to receive(:new).with(opts).and_return(safari)
      expect(safari).to receive(:open)

      described_class.for(:safari, opts)
    end

    it 'starts Edge when platform is :edge' do
      edge = double(:edge)
      expect(Browsenator::Remote::Browserstack::Desktop::Edge).to receive(:new).with({}).and_return(edge)
      expect(edge).to receive(:open)

      described_class.for :edge
    end

    it 'starts Edge when platform is :edge and passing options' do
      edge = double(:edge)
      opts = { project: 'Test' }
      expect(Browsenator::Remote::Browserstack::Desktop::Edge).to receive(:new).with(opts).and_return(edge)
      expect(edge).to receive(:open)

      described_class.for(:edge, opts)
    end

    it 'starts IE when platform is :ie' do
      ie = double(:ie)
      expect(Browsenator::Remote::Browserstack::Desktop::IE).to receive(:new).with({}).and_return(ie)
      expect(ie).to receive(:open)

      described_class.for :ie
    end

    it 'starts IE when platform is :ie and passing options' do
      ie = double(:ie)
      opts = { project: 'Test' }
      expect(Browsenator::Remote::Browserstack::Desktop::IE).to receive(:new).with(opts).and_return(ie)
      expect(ie).to receive(:open)

      described_class.for(:ie, opts)
    end

    it 'throws an error when platform is unknown' do
      expect { Browsenator::Remote::Browserstack.for :chromium }.to raise_error(ArgumentError)
    end
  end
end
