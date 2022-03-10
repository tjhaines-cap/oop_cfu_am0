# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

# say method, takes a string argument, returns a string with the argument passed in and *~* on either side
  def say(words)
    "*~* #{words} *~*"
  end

end

unicorn1 = Unicorn.new("Phil")
p unicorn1
p unicorn1.say("What's up")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

# drink method, changes the value of the variable @thirsty to false
  def drink
    @thirsty = false
  end

end

v1 = Vampire.new("Vlad")
p v1
v1.drink
p v1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon

  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @has_eaten = 0
  end

# eat method, when called it increments has_eaten by one,
# once has_eaten reaches 4 the variable @is_hungry is changed to false
  def eat
    @has_eaten = @has_eaten + 1
    #if statement to check if @has_eaten is 4 or greater
    if @has_eaten >=4
      @is_hungry = false
    end

  end
end

d1 = Dragon.new("Toothless", "Hiccup", "black")
p d1
d1.eat
p d1
d1.eat
d1.eat
p d1
d1.eat
p d1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
    #if the name is Frodo set @has_ring to true otherwise set it to false
    if name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end
  end

# celebrtae_birthday method increments @age by one when called. Checks to see
# if @age is greater than 101 or 33 to update @is_old and @is_adult
  def celebrate_birthday
    @age = @age + 1
    # If statement to check if the age is over 101 or 33
    # update @is_old or @is_adult accordingly
    if @age >= 101
      @is_old = true
    elsif @age >= 33
      @is_adult = true
    end
  end

end

f = Hobbit.new("Frodo", "Nice")
p f
f.celebrate_birthday
p f
b = Hobbit.new("Bilbo", "Adventurous")
p b
b.celebrate_birthday
p b
