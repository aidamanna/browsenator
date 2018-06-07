describe Browsenator::Remote::Browserstack do
  describe '.for' do
    it 'starts Chrome when browser is :chrome' do
      chrome = double(:chrome)
      expect(Browsenator::Remote::Browserstack::Chrome).to receive(:new).with({}).and_return(chrome)
      expect(chrome).to receive(:open)

      Browsenator::Remote::Browserstack.for :chrome
    end

    it 'starts Chrome when browser is :chrome and passing options' do
      chrome = double(:chrome)
      opts = { project: 'Test' }
      expect(Browsenator::Remote::Browserstack::Chrome).to receive(:new).with(opts).and_return(chrome)
      expect(chrome).to receive(:open)

      Browsenator::Remote::Browserstack.for(:chrome, opts)
    end

    it 'starts Safari when browser is :safari' do
      safari = double(:safari)
      expect(Browsenator::Remote::Browserstack::Safari).to receive(:new).with({}).and_return(safari)
      expect(safari).to receive(:open)

      Browsenator::Remote::Browserstack.for :safari
    end

    it 'starts Safari when browser is :safari and passing options' do
      safari = double(:safari)
      opts = { project: 'Test' }
      expect(Browsenator::Remote::Browserstack::Safari).to receive(:new).with(opts).and_return(safari)
      expect(safari).to receive(:open)

      Browsenator::Remote::Browserstack.for(:safari, opts)
    end

    it 'starts Edge when browser is :edge' do
      edge = double(:edge)
      expect(Browsenator::Remote::Browserstack::Edge).to receive(:new).with({}).and_return(edge)
      expect(edge).to receive(:open)

      Browsenator::Remote::Browserstack.for :edge
    end

    it 'starts Edge when browser is :edge and passing options' do
      edge = double(:edge)
      opts = { project: 'Test' }
      expect(Browsenator::Remote::Browserstack::Edge).to receive(:new).with(opts).and_return(edge)
      expect(edge).to receive(:open)

      Browsenator::Remote::Browserstack.for(:edge, opts)
    end

    it 'starts IE when browser is :ie' do
      ie = double(:ie)
      expect(Browsenator::Remote::Browserstack::IE).to receive(:new).with({}).and_return(ie)
      expect(ie).to receive(:open)

      Browsenator::Remote::Browserstack.for :ie
    end

    it 'starts IE when browser is :ie and passing options' do
      ie = double(:ie)
      opts = { project: 'Test' }
      expect(Browsenator::Remote::Browserstack::IE).to receive(:new).with(opts).and_return(ie)
      expect(ie).to receive(:open)

      Browsenator::Remote::Browserstack.for(:ie, opts)
    end

    it 'throws an error when browser is unknown' do
      expect { Browsenator::Remote::Browserstack.for :chromium }.to raise_error(ArgumentError)
    end
  end
end
