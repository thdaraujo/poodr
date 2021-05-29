module Poodr
  class RevealingReferences
    def initialize(data)
      @wheels = wheelify(data)
    end

    def diameters
      wheels.collect do |wheel|
        diameter(wheel)
      end
    end

    def diameter(wheel)
      wheel.rim + (wheel.tire * 2)
    end

    private

    Wheel = Struct.new(:rim, :tire)
    def wheelify(data)
      data.collect do |cell|
        Wheel.new(cell[0], cell[1])
      end
    end

    attr_reader :wheels
  end
end
