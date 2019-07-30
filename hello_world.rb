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
print "For #{number} widgets, your total is: $#{total} "