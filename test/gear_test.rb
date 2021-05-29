require "test_helper"

class GearTest < Test::Unit::TestCase
  test "ratio" do
    wheel = Poodr::Wheel.new(26, 1.5)
    small_gear = Poodr::Gear.new(52, 11, wheel)
    big_gear = Poodr::Gear.new(30, 27, wheel)

    assert_equal 4.7272727272727275, small_gear.ratio
    assert_equal 1.1111111111111112, big_gear.ratio
  end

  test "gear_inches" do
    first_wheel = Poodr::Wheel.new(26, 1.5)
    second_wheel = Poodr::Wheel.new(24, 1.25)

    first_gear = Poodr::Gear.new(52, 11, first_wheel)
    second_gear = Poodr::Gear.new(52, 11, second_wheel)

    assert_equal 137.0909090909091, first_gear.gear_inches
    assert_equal 125.27272727272728, second_gear.gear_inches
  end
end
