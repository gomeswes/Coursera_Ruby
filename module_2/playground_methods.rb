def can_divide_by?(number)
	return false if number.zero?
	true
end

puts "can divide by 3? #{can_divide_by? 3}"
puts "can divide by 0? #{can_divide_by?(0)}"


def factorial(number = 7)
	number == 0 ? 1 : number * factorial(number - 1)
end
puts "Factorial of 3: #{factorial(3)}"
puts "Default Factorial: #{factorial}"