class SolarSystem
  attr_accessor :planets

  def initialize
    @planets = []
  end
end

class Planet
  attr_accessor :name, :mass, :moons

  def initialize(planets)
    @name = planets[:name]
    @mass = planets[:mass]
    @moons = planets[:moons]
    puts "The planet #{@name}, is #{@mass}, and has #{@moons} moons\n\n"
  end
end


planet = [{name: "Ron", mass: "10 kilograms", moons: "5"},{name: "Severus",
  mass: "20 kilograms", moons: "1"},{name:"Luna", mass: "35 kilograms",
    moons: "13"}]


s = SolarSystem.new

planet.each do |p|
  planets = Planet.new(p)
  s.planets.push planets

end
