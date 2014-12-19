class Ship

  attr_writer :ship_area

  def ship_area
    @ship_area
  end

  def name
    @name
  end

  def aircraft_carrier
    @name = :aircraft_carrier
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