require_relative 'wheel'

class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(args)
    args = defaults.merge(args)
    @wheel = args[:wheel]
    @chainring = args[:chainring]
    @cog = args[:cog]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end

  private

  def defaults
    { chainring: 40, cog: 18 }
  end
end
