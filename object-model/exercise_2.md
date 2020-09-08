**What is a module?**

**What is its purpose?**

**How do we use them with our classes?**

**Create a module for the class you created exercise 1 and include it properly.**

*Answers:*

A module is a collection of behaviors (exposed as methods) that is useable in classes via `mixins`. Modules are a way to achieve polymorphism. Modules are utilized by using the `include` invocation in a class.

```ruby
module MyModule
end

class MyClass
  include MyModule
end

my_object = MyClass.new
```