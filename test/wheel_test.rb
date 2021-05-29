require "test_helper"

class WheelTest < Test::Unit::TestCase
  test "circumference" do
    subject = Poodr::Wheel.new(26, 1.5)

    assert_equal 91.106186954104, subject.circumference
  end

  test "diameter" do
    subject = Poodr::Wheel.new(26, 1.5)
    expected = 26 + 1.5 * 2

    assert_equal expected, subject.diameter
  end
end
