require 'cell'

describe Cell do

  let(:cell) {Cell.new}

  it 'can be empty' do
    expect(cell.empty?).to eq(:empty)
  end

  it 'can contain a ship' do
    cell.contain_ship
    expect(cell.empty?).to eq(:not_empty)
  end

  it 'can be not shot at' do
    expect(cell.shot?).to eq(:not_shot)
  end

  it 'can be shot at' do
    cell.shot
    expect(cell.shot).to eq(:shot)
  end

  it 'can be missed' do
    expect(cell.hit?).to eq(:miss)
  end 

  it 'can be hit' do
    cell.contain_ship
    cell.shot
    expect(cell.hit?).to eq(:hit)
  end

end