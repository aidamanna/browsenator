describe HeadlessChrome do
  describe '#open' do
    it 'starts a headless chrome browser' do
      browser = HeadlessChrome.new.open
      expect(browser).to be_a(Watir::Browser)
    end
  end
end
