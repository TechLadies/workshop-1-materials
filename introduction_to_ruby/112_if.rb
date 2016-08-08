#
# This example shows one of the most common structures we use in programs:
# if/else
# This structure allows us to make program behave differently depending on some
# condition.
# In this case we have a function called smoker? that will print "Yes ..." if
# that person is a smoker (if the value of @is_smoker variable is true) or "No
# ..." otherwise.
# The else part is optional, if we do not want to specify behaviour for when the
# condition is false, we can just skip that part.
#

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

  def smoker?
    if @is_smoker
      puts "Yes, #{@name} is a smoker"
    else
      puts "No, #{@name} is not a smoker"
    end
  end
end

monika = Person.new("Monika", 25, false, false)
monika.smoker?
