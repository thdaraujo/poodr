module Poodr
  class Gear
    def initialize(chainring, cog, rim, tire)
      @chainring = chainring
      @cog = cog
      @wheel = Wheel.new(rim, tire)
    end

    def ratio
      chainring / cog.to_f
    end

    def gear_inches
      ratio * wheel.diameter
    end

    private

    # allows the behaviour to be explicit
    # but defers the design decision for later:
    # extracting or not extracting the wheel class
    Wheel = Struct.new(:rim, :tire) do
      def diameter
        (rim + tire * 2)
      end
    end

    attr_reader :chainring, :cog, :wheel
  end
end
