class PuzzlesController < ApplicationController
  def generate
    #TODO Puzzle generated will have a start, end, length and score, along with a count of possible solutions
    generated_puzzle = {
        :start => 'FROG',
        :end => 'BLOG',
        :length => 4 ,
        :possible_solutions => 6,
        :score => 15
    }
    respond_to do |format|
      format.json { render :json => generated_puzzle }
    end
  end
end
