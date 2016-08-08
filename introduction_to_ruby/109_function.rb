#
# Whenever we want to remove duplication of our code (and organize it into
# a meaningful pieces) we use functions (also called methods). A function
# consists of a few parts:
# definition - starts with the word "def", then there's a name, and in the
# parentheses a list of arguments the function takes.
# body - whatever apperas after definition and before word "end" is a body of
# a function and will be processed whenever a function is called.
# ending - the word "end" closes the function. Whatever appears after it does
# not belong to that function anymore
#
# To call a function we simply use its name and provide arguments (as many as
# the function expects)
#


def say_hello(name)
  puts "Good afternoon, #{name}. How are you?"
end

say_hello("Grzegorz")
say_hello("Varun")
say_hello("Sher Minn")
say_hello("Xin Tian")
