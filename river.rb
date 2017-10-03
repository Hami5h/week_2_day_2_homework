class River

  attr_accessor :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def river_name
    return @name
  end

  def amount_of_fish
    return @fish.count
  end

  def add_fish_to_river(fish)
    @fish << fish
  end

  def remove_fish_from_river(fish)
    @fish.delete(fish)
    amount_of_fish
  end

end
