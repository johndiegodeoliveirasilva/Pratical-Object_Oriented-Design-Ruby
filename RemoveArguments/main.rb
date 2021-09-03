require_relative 'gear'

puts Gear.new(
  chainring: 52,
  cog:  11,
  wheel: Wheel.new(26, 1.5)).gear_inches
