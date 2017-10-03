require_relative('../fish.rb')
require_relative('../river.rb')
require('minitest/autorun')
require('minitest/rg')

class TestFish < MiniTest::Test

  def setup
    @fish_1 = Fish.new("slimy")
    @fish_2 = Fish.new("slippery")
  end

def test_fish_name
  assert_equal("slimy", @fish_1.fish_name)
end


end
