#
# Class is a difficult concept to understand, so do not worry if you don't get
# it at first.
# Class represents a custom type of data. In the previous examples we saw types
# like integer or boolean. Classes allow programmers to define more complex
# types (that usually consist of data of simpler types).
#
# This example presents a new class that will represent a Person.
# Class consists of a few elements. It starts with word class and after that
# there comes a name of that class (it must start with a capital letter!).
# In the next lines we see the body of a class, which is filled with functions.
# The functions that appear until line 52, are functions that belong to the
# class. After the "end" keyword that closes the class, the following lines are
# not a part of the class anymore.
#
# Each class can consists many functions, but some of them are special.
# initialize function is called every time an instance of a class is created.
#
# Remember, think of a class as of a type, not a real thing. If person is
# a class, each person that we will represent in our program will be an instance
# of that class.
#
# So after we define the class person, we create an instance of it. We create
# a new variable and call it monika. This variable stores information about
# a person (it knows the name, age and if the person is a smoker and if she's
# lazy).
#
# This class contains a function called describe. After we create an instance of
# a class, we can call different methods on it - describe is a method that will
# print basic information about that person.
#
# The last thing you should notice is the @ character before some of variables.
# We use it whenever we want to share some information between functions. If in
# the initialize method we create a variable called name, this information will
# not be available in the function describe. That's why we add @ in front of the
# name of the variable, to tell the program that it needs to be shared with
# other functions in that class.
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
end

monika = Person.new("Monika", 25, false, false)
monika.describe
