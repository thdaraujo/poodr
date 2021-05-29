require 'test/unit'
require_relative './gear'

class GearTest < Test::Unit::TestCase
  def test_ratios
    small_gear = Gear.new(52, 11, nil, nil)
    big_gear = Gear.new(30, 27, nil, nil)

    assert_equal 4.7272727272727275, small_gear.ratio
    assert_equal 1.1111111111111112, big_gear.ratio
  end

  def test_inches
    first_gear = Gear.new(52, 11, 26, 1.5)
    second_gear = Gear.new(52, 11, 24, 1.25)

    assert_equal 137.0909090909091, first_gear.gear_inches
    assert_equal 125.27272727272728, second_gear.gear_inches
  end
end
