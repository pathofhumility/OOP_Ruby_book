# Create a method spray_paint that can be called on an object and will modigy the color of the car.

class MyCar
  attr_accessor :color, :speed
  attr_reader :year, :model
  
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
end

andy_car = MyCar.new(2016, 'white', 'Fiesta')
andy_car.speed_up(55)
andy_car.brake(15)
andy_car.shut_off

andy_car.spray_paint('mint green')

puts andy_car.year