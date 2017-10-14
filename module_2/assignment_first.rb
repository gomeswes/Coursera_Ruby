
#1. Transform the if into case statements

some_var = "false"
another_var = "nil"
=begin
if some_var == "pink elephant"
	puts "Don't think about pink elephant!"

elsif another_var.nil?
		puts "Question mark in the method name?"

elsif some_var == false
	puts "Looks like this one should execute"

else
	puts "I guess nothing matched.. But why?"

end
=end
def exercise_1_case(some_var, another_var)
	case 
		when some_var == "pink elephant"
			puts "Don't think about pink elephant!"
		when another_var.nil?
			puts "Question mark in the method name?"
		when some_var == false
			puts "Looks like this one should execute"
		else
			puts "I guess nothing matched... But why?"
	end
end
exercise_1_case(some_var, another_var)

# 2.Changing the statements for matching

#1 case true
some_var = "pink elephant" 
another_var = "false"
exercise_1_case(some_var, another_var)

#2 case true
some_var = ""
another_var = nil
exercise_1_case(some_var, another_var)

#3 case true
some_var = false
another_var = "nil"
exercise_1_case(some_var, another_var)