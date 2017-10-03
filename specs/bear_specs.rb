require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')
require('minitest/autorun')
require('minitest/rg')

class TestBear < MiniTest::Test

  def setup
    @bear_1 = Bear.new("Yogi")
    @river_2 = River.new("Nile")
    @fish_1 = Fish.new("slimy")
    @fish_2 = Fish.new("slippery")
  end

  def test_bear_name
    assert_equal("Yogi", @bear_1.bear_name)
  end


  def test_bear_stomach_status
    assert_equal(0, @bear_1.bear_stomach_status)
  end


  def test_bear_eats_fish
    @bear_1.bear_eats_fish(@fish_1)
    assert_equal(1, @bear_1.bear_stomach_status)
  end

end
