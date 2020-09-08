# Add an accessor method to your MyCar class to change and view the color of your car.
# Then add an accessor method that allows you to view, but not modify, the year of your car.

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
end

andy_car = MyCar.new(2016, 'white', 'Fiesta')
andy_car.speed_up(55)
andy_car.brake(15)
andy_car.shut_off

puts andy_car.color
andy_car.color = 'Mint green'
puts andy_car.color

puts andy_car.year