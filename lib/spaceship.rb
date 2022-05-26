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

  def land(mass, gravity)
    fuel = (mass * gravity * 0.033 - 42).floor
    extra_fuel = fuel
    while extra_fuel > 0
      extra_fuel = (extra_fuel * gravity * 0.033 - 42).floor
      fuel+= extra_fuel if extra_fuel.positive?
    end
    fuel
  end

  def calculate(spaceship_mass, flight_path)
    flight_type = flight_path[0]
    case flight_type
    when :launch
      fuel_for_flight = launch(spaceship_mass, flight_path[1])
    when :land
      fuel_for_flight = land(spaceship_mass, flight_path[1])
    else
      throw('Unexpected flight type! Please, choose option Launch or land. Thanks! ')
    end
    fuel_for_flight
  end
end