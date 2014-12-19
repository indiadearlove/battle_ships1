require 'ship'

describe 'Ship' do 

  let (:ship) {Ship.new}

  it "should have a size" do
    ship.aircraft_carrier
    expect(ship.ship_area).to eq(5)
  end

  it "should have a name" do
    ship.aircraft_carrier
    expect(ship.name).to eq('aircraft_carrier')
  end

  it "should know its individual size" do
    ship.cruiser
    expect(ship.ship_area).to eq(3)
  end

  it "All ships should know name and size" do
    ship.destroyer
    expect(ship.ship_area).to eq(2)
  end

end


