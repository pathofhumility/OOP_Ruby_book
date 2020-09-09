# Create a superclass called `Vehicle` for your `MyCar` class to inherit from and move the
# behavior that isn't specific to the `MyCar` class to the super class. Create a constant in
# your `MyCar` class that stores information about the behicle that makes it different from
# other types of vehicles.
#
# Then create a new class called `MyTruck` that inherits from your superclass that also has a
# constant defined that separates it from the `MyCar` class in some way.

class Vehicle
  attr_writer :speed
  attr_reader :year, :color, :model

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

  def spray_paint(new_color)
    @old_color = color
    self.color = new_color
    puts "Your #{year} #{@old_color} #{model} has just come back from the paint booth, it is now #{color}."
  end

  def self.mpg(miles, gallons)
    mpg = miles / gallons 
    puts "Your car gets #{mpg} mpg."
  end

  private
  attr_writer :color
end

class MyCar < Vehicle

  BODY_STYLE = 'hatchback'

  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

class MyTruck < Vehicle
  BED_LENGTH = 8
end

Vehicle.mpg(300, 10)
my_car = MyCar.new(2016, 'white', 'Fiesta')
puts my_car

my_car.spray_paint('mint green')
puts my_car