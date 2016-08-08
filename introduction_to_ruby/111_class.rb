class Person
  def initialize(name, age, is_smoker, is_lazy)
    @name = name
    @age = age
    @is_smoker = is_smoker
    @is_lazy = is_lazy
  end

  def describe
    puts "#{@name} is #{@age} years old. Is a smoker? #{@is_smoker}. Is lazy? #{@is_lazy}"
  end
end

monika = Person.new("Monika", 25, false, false)
monika.describe
