class Puzzle < ActiveRecord::Base

  # Get a puzzle of the requested word length and
  # puzzle length.
  def self.get_random(word_length, puzzle_length, shown_list = [])
    p = Puzzle.first
    {
      :start_word => p.start_word,
      :end_word => p.end_word,
      :length => p.length,
      :score => p.score
    }
  end

  # Determine whether a puzzle has been solved
  def self.solved?(start_word, end_word, length, words)
    Puzzle.where({:start_word => start_word, :end_word => end_word, :length => length, :words => words}).exists?
  end
end
