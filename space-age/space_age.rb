class SpaceAge

  def initialize(seconds)
    @seconds = seconds
  end

  attr_reader :seconds

  earth = 31557600.0

  orbital_periods = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1.0,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  orbital_periods.keys.each do |planet|
    define_method("on_#{planet}") do
      (@seconds/(orbital_periods[planet]*earth)).round(2)
    end
  end

end