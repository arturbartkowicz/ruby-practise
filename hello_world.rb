puts "Hello world!"

# Ruby Basics - team tree house - exercise

puts "Ruby basics - exercise:"

def ask(question)
  print question + " "
  gets.chomp
end

def price(quantity)
  if quantity >=100
    price_per_unit = 8
  elsif quantity >= 50 && quantity <100
    price_per_unit = 9
  else quantity < 50
    price_per_unit = 10
  end
quantity*price_per_unit
end
puts "Welcome to the widget store!"
answer = ask ('How many widgets are you ordering?')
number = answer.to_i
total = price(number)
puts "For #{number} widgets, your total is: $#{total} "

puts "*******************"

#  Github exercise 1 
# Hello, World!
# Create a program which prints “Hello, World!” to the screen
# Update your program so that it asks the user for their name and greets them
# Update your program so that it will only greet it’s creators!
# Make the output look “nicer” - for example, put the text in a frame, one word per line:
# ******
# *Like*
# *This*
# ******
# Add the current date and time to the output

puts "Hello, World"
puts "Put your name:"
name = gets.chomp
character = name.count name
puts "*******#{character}"
puts "*Hello #{name}*".center(1,">")
puts "*************"
puts Time.now

puts "*******************"

# Ruby loops

loop do
  print "Do you want to continue (press 'n' if you don't?"
  answer = gets.chomp.downcase
  if answer == "n"
    break
  end
end

puts "*******************"

# Loop conditionals

random_number = Random.new.rand(5)
loop do
  print "Guess the number between 0 and 5 (e to exit)"
  answer = gets.chomp
  if answer =="e"
    puts "The number was #{random_number}"
    break
  else
    if answer.to_i == random_number
      puts "You guessed correctly!"
      break
    else
      puts "Try again."
    end
  end
end


puts "*******************"

# Loop exit for numbers

loop do
  print "Enter a number greater than 10 to exit"
  number = gets.chomp.to_i
  break if number > 10
end

puts "*******************"

# Program to loop through asking for someone's name and make sure it is formatted correctly

def get_name
  name = ""       #The reason that we have to have answer set appear is because answer will be
  loop do         # nill If we go into the loop without it
    print "Enter your name (minimum 2 characters, no numbers): "
    name = gets.chomp
    if name.length >= 2 && !name.index(/\d/)
      break
    else
      puts "Name must be longer than 2 characters and not contain numbers."
    end
  end
  return name
end

name = get_name()
puts "Hi #{name}."

puts "*******************"

# While loop - runs as long as the condition is TRUE
# when we use the while loop, there is no need to manually use
# the break key word

answer = ""
while answer != "n"
  print "Do you want me to continue this pointless loop again? (y/n)"
  answer = gets.chomp.downcase
end

puts "*******************"

# Print hello so many times...

def print_hello(number_of_times)
  i = 0                             # i = iterator
  while i < number_of_times
    puts "hello"
    i += 1
  end
end

answer = 0
while answer < 5
  print "How many times do you want to print 'hello'? (Enter a number greater than 5 to exit) "
  answer = gets.chomp.to_i
  print_hello(answer)
end

puts "*******************"

# Until loop will run as long as the condition is false
# and it exits when the conditions becomes true...

answer = ""
until answer == "n" do
  print "Do you want this loop to continue? (y/n) "
  answer = gets.chomp
end

puts "*******************"

def print_hello(number_of_times)
  i = 0
  while i < number_of_times
    puts "hello"
    i += 1
  end
end

answer = 0
until answer >= 5
  print "How many times do you want to print 'hello'? Enter a number greater than 5 to exit) "
  answer = gets.chomp.to_i
  print_hello(answer)
end

puts "*******************"

# Iteration with Each
# Sample:

array = [0, 1, 2, 3, 4, 5]
i = 0
while i < array.length
  item = array [i]
  puts "The current item is #{item}."
  i += 1
end

# the same with Each:

array.each do |item|
  puts "The current item is #{item}."
end

puts "*******************"

# Hash Iteration  

business = {"name" => "Treehouse", "location" => "Portland, OR"}

# The each method is also each_pair

business.each do |key, value| # when we use each method and iterate over a hash, it takes two arguments. The key and the value. So we will say, key and value as the block argument
  puts "The hash key is #{key} and the value is #{value}."
end

# We also have ways of iterating over just the keys
 business.each_key do |key|
  puts "Key: #{key}"
 end

 # We also have ways of iterating over just the values

 business.each_value do |value|
  puts "Value: #{value}"
 end

puts "*******************"

# Times Iteration
# The times iterator will take a number and execute the statements in the block that number of times.
# The times iterator optionally takes an argument and, just like array indices, starts at 0.

5.times do
  puts "Hello!"
end

# We can also send arguments into times method
5.times do |item|      #If we want to send an argument to the block we do so by writing a pipe and
  puts "Hello! #{item}"  #puting the local variable inside of the pipes
end
