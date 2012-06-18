

Given /^a deal\-calculating robot$/ do
  @robot = Bryan.new
end

When /^I tell it the list price of a car$/ do
  @robot.tell_price 1000
end

Then /^it will tell me the new price of the car$/ do
  car_cost = 1000
  one_percent_of_car_cost = car_cost * 1 / 100
  seventeen_percent = one_percent_of_car_cost * 17
  new_price = car_cost - seventeen_percent
  @robot.answer.should == new_price
end
