require_relative 'word_game'

describe WordGame do
  let(:word_game) { WordGame.new('sloths') }

  describe '::new' do
    it 'correctly initializes @word' do
      expect(word_game.instance_variable_get(:@word)).to eq 'sloths'
    end

    it 'correctly initializes @max_wrong_guesses' do
      expect(word_game.instance_variable_get(:@max_wrong_guesses)).to eq 3
    end

    it 'correctly initializes @guessed_letters' do
      expect(word_game.instance_variable_get(:@guessed_letters)).to eq []
    end

    it 'correctly initializes @guessed_word' do
      expect(word_game.guessed_word).to eq '------'
    end

    it 'correctly initializes @game_over' do
      expect(word_game.game_over).to eq false
    end
  end
end
