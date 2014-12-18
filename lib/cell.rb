class Cell

  def initialize
    @empty = :empty
    @shot = :not_shot
  end

  def empty?
    @empty
  end

  def contain_ship
    @empty = :not_empty
  end

  def shot?
    @shot
  end

  def shot
    @shot = :shot
  end

  def hit?
    if @empty == :not_empty && @shot == :shot
      @hit = :hit
    else
      @hit = :miss
    end
  end

end
