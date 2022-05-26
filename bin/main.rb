require_relative '../lib/spaceship.rb'

class Flight
  def initialize(spaceship_mass, flight_path)
    @flight_path = flight_path
    @spaceship = nil
    @total_fuel = 0
    create_spaceship(spaceship_mass)
    flight_journey
  end
end