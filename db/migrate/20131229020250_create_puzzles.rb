class CreatePuzzles < ActiveRecord::Migration
  def change
    create_table :puzzles do |t|
      t.string :start_word
      t.string :end_word
      t.integer :length
      t.integer :score
      t.text :words

      t.timestamps
    end
  end
end
