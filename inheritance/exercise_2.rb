# Add a class variable to your superclass that can keep track of the number of objects
# created that inherit from the superclass. Create a method to print out the value of this
# class variable as well.

class Vehicle
  attr_writer :speed
  attr_reader :year, :color, :model

  @@object_count = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@object_count += 1
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

  def self.print_obj_count
    puts "There have been #{@@object_count} instances of #{self} created."
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

  def to_s
    puts "My truck is a #{year} #{color} #{model}."
  end
end

Vehicle.mpg(300, 10)
my_car = MyCar.new(2016, 'white', 'Fiesta')
my_truck = MyTruck.new(2006, 'black', 'Silverado')

puts my_car
puts my_truck

my_car.spray_paint('mint green')
puts my_car

Vehicle.print_obj_count