# Create a class called MyCar. Ehen you initialize a new instance ofr object of the class, allow the user
# to define some instance variables that tell us the year, color, and model of the car. Create an instance
# variable that is set to 0 during instantiation of the object to track the current speed of the car as well.
# Create instance methods that allow the car to speed up, brake, and shut the car off.

class MyCar
  attr_accessor :year, :color, :model, :speed

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(accelerate)
   self.speed += accelerate
   puts "You are now going #{speed} mph."
  end

  def brake(deaccelerate)
   self.speed -= deaccelerate
   puts "You are now going #{speed} mph."
  end

  def shut_off
    self.speed = 0
    puts "Your speed is #{speed}."
    puts "Your #{year} #{color} #{model} is now shut off."
  end
end

andy_car = MyCar.new(2016, 'white', 'Fiesta')
andy_car.speed_up(55)
andy_car.brake(15)
andy_car.shut_off