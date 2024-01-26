class Car
  def initialize(color, brand)
    @color = color
    @brand = brand
    @wheels = 4
    @engine_started = false
  end

  def start_engine!
    @engine_started = true
  end

  def self.type
    "A car is a vehicle!!"
  end
end

ferrari = Car.new('blue', 'ferrari')

p ferrari

ferrari.start_engine!

p ferrari

p Car.type
