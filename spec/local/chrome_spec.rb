describe Chrome do
  describe '#open' do
    it 'opens a chrome browser' do
      browser = Chrome.new.open
      expect(browser).to be_a(Watir::Browser)
    end
  end
end