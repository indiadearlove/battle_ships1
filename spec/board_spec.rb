require 'board'
require './lib/ship.rb'
require 'cell'

describe Board do

  let(:board){Board.new}
  let(:ship){Ship.new}
  
  before(:each) do
    board.default_grid
  end

  it 'should contain 100 cells in the grid' do
    expect(board.grid.length).to eq(100)
  end

  it 'should be able to place a ship' do
    board.place_ship('A3')
    expect(board.grid["A3"].empty?).to eq(:not_empty)
  end

  it 'should be able to place a ship horizontally' do
    ship.aircraft_carrier
    board.horizontal(ship, "A1")
    expect(board.grid["A1"].empty?).to eq(:not_empty)
    expect(board.grid["A2"].empty?).to eq(:not_empty)
    expect(board.grid["A6"].empty?).to eq(:empty)
  end

  it 'should be able to place a ship vertically' do
    ship.aircraft_carrier
    board.vertical(ship, "A1")
    expect(board.grid["A1"].empty?).to eq(:not_empty)
    expect(board.grid["B1"].empty?).to eq(:not_empty)
    expect(board.grid["F1"].empty?).to eq(:empty)
  end

end