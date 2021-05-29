require "test_helper"

class RevealingReferencesTest < Test::Unit::TestCase
  test "diameters" do
    data = [[622, 20], [622, 23], [559, 30], [559, 40]]
    subject = Poodr::RevealingReferences.new(data)
    expected = [662, 668, 619, 639]

    assert_equal expected, subject.diameters
  end
end
