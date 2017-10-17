class Car
  @@number_of_cars = 0
  def initialize(x, y)
    @color = x
    @doors = y
    @@number_of_cars += 1
  end

  def eat
    p @color
    p @doors
    p @@number_of_cars
  end

  def self.drink
    p "bla-bla-bla"
  end
end


toyota = Car.new(5, 6)
Car.drink
toyota.eat
