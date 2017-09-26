class Car
  @@number_of_cars = 0
  def initialize(x, y)
    @color = x
    @doors = y
    @@number_of_cars += 1
  end

  def eat
    p "_" * 50
    p @color
    p @doors
    p @@number_of_cars
  end

  def self.drink
    p @color
    p @doors
    p @@number_of_cars
  end
end

volvo = Car.new(2, 3)
toyota = Car.new(5, 6)
Car.drink
volvo.eat
