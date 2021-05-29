require "test/unit"
require_relative './gear'

class GearTest < Test::Unit::TestCase
    def test_ratios
        small_gear = Gear.new(52, 11)
        big_gear = Gear.new(30, 27)
    
        assert_equal small_gear.ratio, 4.7272727272727275
        assert_equal big_gear.ratio, 1.1111111111111112
    end
end