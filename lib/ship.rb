class Ship

  attr_writer :ship_area

  def ship_area
    @ship_area
  end

  def name
    @name
  end

  def aircraft_carrier
    @name = 'aircraft_carrier'
    @ship_area = 5
  end

  def battleship
    @name = :battleship
    @ship_area = 4
  end

  def submarine
    @name = :submarine
    @ship_area = 3
  end

  def cruiser
    @name = :submarine
    @ship_area = 3
  end

  def destroyer
    @name = :destroyer
    @ship_area = 2
  end

end


=begin
  attr_accessor :name, :size

  def initialize(size, name)
    @name = name
    @size = size
  end

  def self.aircraft_carrier
    new(5, 'aircraft_carrier')
  end

  def self.battleship
    new(:battleship, 4)
  end

  def self.submarine
    new(:submarine, 3)
  end

  def self.cruiser
    new(:cruiser, 3)
  end

  def self.destroyer
    new(:destroyer, 2)
  end

=end