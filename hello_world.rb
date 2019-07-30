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
  print "Do you want to continue?"
  answer = gets.chomp.downcase
  if answer == "n"
    break
  end
end

