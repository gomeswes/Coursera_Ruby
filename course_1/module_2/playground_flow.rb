age = -2

#unless
puts "This will be printed" unless age == 1
#reads: unless age equals to 1, do it
#is age equals to 1? Not. 
puts "This will not be printed" unless age == -2
#reads: unless age equals to -2, do it
#is age equals to -2? Yes.

#until
c = 10
until c == 8 #execute this block until the expression is true/stop executing when expression true
	print "not yet.. "  
	c-=1
end
print ""


#if/else case style
case
	when age <= 21
		puts "Under 21"
	when age > 21
		puts "Over 21"
	else 
		puts "That's the default"
end
	
puts "That's an integer" if Integer ===  2
puts "It's a match!" if /sera/ === "coursera"


#case using === internally
name = "Carol"
case name
	when /car/i then puts "there's a car in your name"
	when /rol/i then puts "there's a rol in your name :)"
end

puts "end"