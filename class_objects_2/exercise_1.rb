# Add a class method to your MyCar class that calculates the gas mileage of any car.

class MyCar
  attr_accessor :color, :speed
  attr_reader :year, :model
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def self.mpg(miles, gallons)
   mpg = miles / gallons 
   puts "Your car gets #{mpg} mpg."
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

MyCar.mpg(300, 10)