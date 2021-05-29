require "test_helper"

class PoodrTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::Poodr.const_defined?(:VERSION)
    end
  end
end
