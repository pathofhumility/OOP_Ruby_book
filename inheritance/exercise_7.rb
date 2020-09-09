# Create a class `Student` with attributes `name` and `grade`. Do not make the grade getter
 # public, so `joe.grade` will raise an error, Create a `better_grade-thean?` method, that you
 # can call like so...

class Student
  attr_reader :name
  attr_writer :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    puts grade > other_student.grade ? "Well done!" : "Keep working!"
  end

  protected

  attr_reader :grade
end

joe = Student.new('Joe', 96)
jim = Student.new('Jim', 91)
joe.better_grade_than?(jim)
# jim.grade   => Protected method `grade' called for #<Student....> (NoMethodError)