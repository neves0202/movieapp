# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

count = 100
while count > 0
	if count%3 == 0 and count%5 != 0
		puts  "Fizz"
	elsif count%5 == 0 and count%3 != 0
		puts  "Buzz"
	elsif count%3 == 0 and count%5 == 0
		puts  "FizzBuzz"
	else
	puts  "#{count}"
end
	count -=1
end



