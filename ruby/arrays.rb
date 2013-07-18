def assert_equal(expected, actual)
  unless expected == actual
    abort "Expected #{expected} to match #{actual} on line #{caller.first.split(":")[1]}"
  end
end

def ___(*arguments)
  abort  "You have to fill in the blank on line #{caller.first.split(":")[1]}".center(100, "*")
end





categories = Array.new

categories.push("Music")
categories <<("Weather")
categories.push ("Florida"
	) 
assert_equal ["Florida", "Music", "Weather"], categories.sort