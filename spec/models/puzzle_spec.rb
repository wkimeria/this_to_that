require 'spec_helper'

describe Puzzle do
  describe 'get random' do
    before(:each) do
      create(:puzzle, start_word: 'FROG', end_word: 'BRAT', words: '["FROG","FRAG","FRAT","BRAT"]', length: 4, score: 15)
    end
    it "returns a random puzzle" do
      response = Puzzle.get_random(1,1)
      expect(response).not_to be_nil
      expect(response[:start_word]).not_to be_nil
      expect(response[:end_word]).not_to be_nil
      expect(response[:length]).to equal 4
      expect(response[:score]).to equal 15
    end
  end

  describe 'puzzle solved' do
    before(:each) do
      create(:puzzle, start_word: 'FROG', end_word: 'BRAT', words: '["FROG","FRAG","FRAT","BRAT"]', length: 4, score: 15)
    end

    it 'returns true if puzzle solved' do
    expect(Puzzle.solved?('FROG', 'BRAT', 4,  '["FROG","FRAG","FRAT","BRAT"]' )).to equal true
    end

    it 'returns false if puzzle solved' do
      expect(Puzzle.solved?('FROG', 'BRAT', 4,  '["FROG","GRAG","FRAT","BRAT"]' )).to equal false
    end
  end
end
