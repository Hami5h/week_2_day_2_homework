require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')
require('minitest/autorun')
require('minitest/rg')

class TestRiver < MiniTest::Test

  def setup
    @river_1 = River.new("Amazon")
    @salmon_1 = Fish.new("sloppy")
    @salmon_2 = Fish.new("spiky")
  end

  def test_river_name
    assert_equal("Amazon", @river_1.river_name)
  end

  def test_amount_of_fish
    assert_equal(0, @river_1.amount_of_fish)
  end

  def test_add_fish_to_river
    @river_1.add_fish_to_river(@salmon_1)
    assert_equal(1, @river_1.amount_of_fish)
  end

  def test_remove_fish_from_river
    @river_1.remove_fish_from_river(@salmon_1)
    assert_equal(0, @river_1.amount_of_fish)
  end

end
