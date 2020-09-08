# When running the following code we get an error:
# undefined method `name=' for ....
# Why do we get the error and how do we fix it?

class Person
  attr_reader :name
  #attr_writer :name

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = 'Bob'
puts bob.name

# We get the mentioned error because there is no `setter method` defined in the `Person` class.
# What that means is there is no functional way to assign a new value to the `@name` instance 
# variable.
#
# To correct the issue using the "shorthand" implementation of a setter method we could add
# line 7 as we have done above. (uncommented of course)
#
# To more clearly demonstrate a `setter method` we could add the `name=` method beginning on line
# 13.