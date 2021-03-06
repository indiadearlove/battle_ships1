require_relative = 'cell.rb'
require_relative = 'ship.rb'

class Board

attr_reader :grid

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

  def horizontal(ship, coordinates)
    n = ship.ship_area
    n.times do 
      place_ship(coordinates)
      coordinates = coordinates.next
    end
  end

  def vertical(ship, coordinates)
    n = ship.ship_area
    n.times do
      place_ship(coordinates)
      coordinates = coordinates.reverse.next.reverse
    end
  end

end