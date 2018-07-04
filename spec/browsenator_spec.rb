describe Browsenator do
  describe '.for' do
    it 'starts local Chrome when platform is :chrome and remote is not provided' do
      expect(Browsenator::Local).to receive(:for).with(:chrome, {})

      Browsenator.for :chrome
    end

    it 'starts local Chrome when platform is :chrome and remote is false' do
      expect(Browsenator::Local).to receive(:for).with(:chrome, {})

      Browsenator.for(:chrome, remote: false)
    end

    it 'starts remote Chrome when platform is :chrome and remote is Browserstack' do
      expect(Browsenator::Remote::Browserstack).to receive(:for).with(:chrome, project: 'Test')

      Browsenator.for(:chrome, remote: :browserstack, project: 'Test')
    end

    it 'throws an error when remote is unknown' do
      expect { Browsenator.for :chrome, remote: :saucelabs }.to raise_error(ArgumentError)
    end
  end
end
