**How do we create an object in Ruby?**

**Give an example of the creation of an object.**

Answer:

Ruby objects are created through a "workflow" called `instantiation`. Instantiation consists of the following:
- A `class` must exist or be created.
- From that class an instance, also known as an object, can be created by calling the class method `::new` on the class from which we wish to create the instance/object.
- The object can be assigned to a variable so that it can be usefully interacted with as needed.

Example:
```ruby
class MyClass
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

my_object = MyClass.new('Andy') # object creation from the MyClass class.
puts my_object.name             # => 'Andy'
```