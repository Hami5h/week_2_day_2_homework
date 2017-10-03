class Bear

  def initialize(name)
    @name = name
    @fish = []
  end

  def bear_name
    return @name
  end

  def bear_stomach_status
    return @fish.count
  end

  def bear_eats_fish(fish)
    @fish << fish
  end

end
