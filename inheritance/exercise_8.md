# Exercise_8.rb

Given the following code:

```ruby
bob = Person.new
bob.hi
```

And the corresponding error message...

```
NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
from (irb):8
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
```

What is the problem and how would you go about fixing it?

**Answer:**

The problem is that object `bob` is attempting to call a private method of the `Person` class.
Private methods are not available to a class' objects/instances.
There are two ways to fix this:
1. Make `hi` a public method.
2. Call a public method on instance `bob` that calls the private method `hi`.