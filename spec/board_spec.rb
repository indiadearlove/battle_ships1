require 'board'
require 'ships'

describe Board do

  let(:board){Board.new}
  
  before(:each) do
    board.default_grid
  end

  it 'should exsist' do
    expect(board.exsist).to eq(true)
  end

  it 'should contain 100 cells in the grid' do
    expect(board.grid.length).to eq(100)
  end

  it 'should be able to place a ship' do
    board.place_ship('A3')
    expect(board.grid["A3"].empty?).to eq(:not_empty)
  end

end