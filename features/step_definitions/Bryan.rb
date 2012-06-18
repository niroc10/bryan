class Bryan

  def tell_price(price)
    @list_price = price
  end

  def answer
    car_cost = @list_price
    one_percent_of_car_cost = car_cost * 1 / 100.00
    seventeen_percent = one_percent_of_car_cost * 17
    new_price = @list_price - seventeen_percent
    return new_price
  end

end

puts "Hello, I am Bryan"
puts "I can calculate car discounts!"
puts "What is the list price of the car?"
price = gets.to_i

bryan = Bryan.new
bryan.tell_price price
puts "The discount price of the car is:"
puts bryan.answer
