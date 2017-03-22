require_relative 'word_game'

describe WordGame do
  let(:word_game) { WordGame.new('sloths') }

  describe '::new' do
    it 'correctly initializes @word' do
      expect(word_game.instance_variable_get(:@word)).to eq 'sloths'
    end

    it 'correctly initializes @max_wrong_guesses' do
      expect(word_game.max_wrong_guesses).to eq 3
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

  describe '#guess_letter' do
    context 'guessing a correct letter' do
      it 'returns true' do
        expect(word_game.guess_letter('o')).to eq true
      end

      it 'correctly modifies @guessed_word' do
        word_game.guess_letter('s')
        expect(word_game.guessed_word).to eq 's----s'
      end

      it 'adds letter to the array of guessed letters' do
        word_game.guess_letter('s')
        word_game.guess_letter('l')
        word_game.guess_letter('t')
        expect(word_game.instance_variable_get(:@guessed_letters)).to eq ['s', 'l', 't']
      end
    end

    context 'guessing an incorrect letter' do
      it 'returns true' do
        expect(word_game.guess_letter('a')).to eq true
      end

      it 'decrements the maximum wrong guess count' do
        word_game.guess_letter('z')
        word_game.guess_letter('x')
        expect(word_game.max_wrong_guesses).to eq 1
      end
    end

    context 'guessing a letter already in the guessed letters array' do
      it 'returns false' do
        word_game.guess_letter('h')
        expect(word_game.guess_letter('h')).to eq false
      end
    end
  end

  describe '#replace_letters' do
    it 'correctly handles a letter that occurs once' do
      word_game.replace_letters('t')
      expect(word_game.guessed_word).to eq '---t--'
    end

    it 'correctly handles a letter that occurs more than once' do
      word_game.replace_letters('s')
      expect(word_game.guessed_word).to eq 's----s'
    end
  end

  describe '#check_for_win' do
    it 'returns true if user has won' do
      word_game.instance_variable_set(:@guessed_word, 'sloths')
      expect(word_game.check_for_win).to eq true
    end

    it 'sets @game_over to true if user has won' do
      word_game.instance_variable_set(:@guessed_word, 'sloths')
      word_game.check_for_win
      expect(word_game.game_over).to eq true
    end

    it 'returns false if user has not won yet' do
      expect(word_game.check_for_win).to eq false
    end
  end

  describe '#game_is_over?' do
    it 'returns true if @game_over is set to true' do
      word_game.instance_variable_set(:@game_over, true)
      expect(word_game.game_is_over?).to eq true
    end

    it 'returns true if maximum wrong guess count reaches 0' do
      word_game.instance_variable_set(:@max_wrong_guesses, 0)
      expect(word_game.game_is_over?).to eq true
    end

    it 'returns true when game is supposed to continue' do
      expect(word_game.game_is_over?).to eq false
    end
  end
end
