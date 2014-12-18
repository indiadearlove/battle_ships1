require_relative = 'cell.rb'


class Board

attr_reader :grid

  def exsist
    true
  end

  def default_grid
    letters = ('A'..'J').to_a
    numbers = (1..10).to_a
    @grid = Hash.new
    letters.map do 
      |letter| numbers.map do 
        |number| @grid["#{letter}#{number}"] = Cell.new
      end 
    end
  end

  def place_ship(coordinates)
    grid[coordinates].contain_ship
  end

end