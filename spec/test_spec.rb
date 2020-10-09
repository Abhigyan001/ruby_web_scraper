require_relative '../lib/methods.rb'

describe Meditation do
  test_meditate = Meditation.new
  wrong = 13
  right = 8

  describe '#check_input' do
    it 'Returns true for input between 1 to 10' do
      expect(test_meditate.check_input(right)).to eql(true)
    end

    it 'Returns false for input other than between 1 to 27' do
      expect(test_meditate.check_input(wrong)).to eql(false)
    end
  end

  describe '#web_scraper' do
    it 'Returns the meditation tip when valid input is given' do
      expect(test_meditate.web_scraper(right)).to eql('Practice makes perfect')
    end
  end

  describe '#tip_detail' do
    it 'Returns the details of the meditation tip' do
      expect(test_meditate.tip_detail(right)).to be_a(String)
    end
  end
end
