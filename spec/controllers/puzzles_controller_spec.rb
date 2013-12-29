require 'spec_helper'

describe PuzzlesController do
  describe 'GET generate.json' do
    before(:each) do
      create(:puzzle)
    end
    it 'should return a puzzle' do
      response = get :generate, { :format => :json }
      expect(response.body).not_to be_nil
    end
    it 'puzzle should have all required elements' do
      response = get :generate, { :format => :json }
      expect(response.body['start_word']).not_to be_nil
      expect(response.body['end_word']).not_to be_nil
      expect(response.body['length']).not_to be_nil
      expect(response.body['score']).not_to be_nil
    end
  end

end
