class Spaceship
  attr_reader :mass
  def initialize(mass)
    @mass = mass
  end

  def launch(mass, gravity)
    fuel = (mass * gravity * 0.042 - 33).floor
    extra_fuel = fuel
    while extra_fuel > 0
      extra_fuel = (extra_fuel * gravity * 0.042 - 33).floor
      fuel += extra_fuel if extra_fuel.positive?
    end
    fuel
  end

end