#interpolation
single_quoted = 'This is a single quoted string,\n that print as is'
double_quoted = "This is a double quoted string,\n it will interpret \n like this"

puts single_quoted
puts double_quoted

def multiply (one, two)
	"#{one} multiplied by #{two} equals #{one * two}"
end
puts multiply 3,4
####

my_name = " tim"
puts my_name.lstrip.capitalize
p my_name
my_name.lstrip!
my_name[0] = 'K'
puts my_name

#%Q is similar to " it consider the new lines chars
cur_weather = %Q{It's a hot day outside
								Grab your umbrelas...}

cur_weather.lines do |line|
	line.sub! 'hot','rainy'
	puts "#{line.strip}"
end
####

p "hello".methods.grep /case/ #looking for methods with case in the my_name
p "hello".include? ?l
p "hello".include? %Q{he}