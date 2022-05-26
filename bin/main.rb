require_relative '../lib/spaceship.rb'

class Flight
  def initialize(spaceship_mass, flight_path)
    @flight_path = flight_path
    @spaceship = nil
    @total_fuel = 0
    create_spaceship(spaceship_mass)
    flight_journey
  end

  def create_spaceship(mass)
    @ship = Spaceship.new(mass)
  end

  def flight_journey
    @flight_path.each do |f|
      @total_fuel += @ship.calculate(@ship.mass + @total_fuel, f)
    end
    puts "Total fuel for the trip is #{@total_fuel}"
  end
end

Flight.new(28801, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]])
Flight.new(14606, [[:launch, 9.807], [:land, 3.711], [:launch, 3.711], [:land, 9.807]])
Flight.new(75432, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 3.711], [:launch, 3.711], [:land, 9.807]])
