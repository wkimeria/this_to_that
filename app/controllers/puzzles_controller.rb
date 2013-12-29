class PuzzlesController < ApplicationController
  def generate
    #TODO Puzzle generated will have a start, end, length and score, along with a count of possible solutions
    generated_puzzle = Puzzle.get_random(1,1)
    respond_to do |format|
      format.json { render :json => generated_puzzle }
    end
  end
end
