require './lib/ships.rb'

describe Ships do

  let(:ships){Ships.new}

  it 'should have a size' do
    ships.aircraft_carrier
    expect(ships.size).to eq(5)
  end

  it 'should have a name' do
    ships.aircraft_carrier
    expect(ships.name).to eq(:aircraft_carrier)
  end

  it 'should be able to tell you the size of the cruiser' do
    ships.cruiser
    expect(ships.size).to eq(3)
  end
  
end