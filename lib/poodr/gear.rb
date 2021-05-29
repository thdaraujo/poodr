module Poodr
  class Gear
    def initialize(chainring, cog, rim, tire)
      @chainring = chainring
      @cog = cog
      @rim = rim
      @tire = tire
    end

    def ratio
      chainring / cog.to_f
    end

    def gear_inches
      ratio * diameter
    end

    def diameter
      (rim + tire * 2)
    end

    private

    attr_reader :chainring, :cog, :rim, :tire
  end
end
