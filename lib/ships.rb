class Ships

  def size
    @size
  end

  def name
    @name
  end

  def aircraft_carrier
    @name = :aircraft_carrier
    @size = 5
  end

  def battleship
    @name = :battleship
    @size = 4
  end

  def submarine
    @name = :submarine
    @size = 3
  end

  def cruiser
    @name = :cruiser
    @size = 3
  end

  def destroyer
    @name = :destroyer
    @size = 2
  end

end
