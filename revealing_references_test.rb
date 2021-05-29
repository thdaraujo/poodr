require 'test/unit'
require_relative './revealing_references'

class RevealingReferencesTest < Test::Unit::TestCase
  def test_diameters
    data = [[622, 20], [622, 23], [559, 30], [559, 40]]
    subject = RevealingReferences.new(data)
    expected = [662, 668, 619, 639]

    assert_equal expected, subject.diameters
  end
end
