inclusive = 1..4 #all inclusive
p "1..4 include? 4 #{inclusive.include? 4}"

exclusive = 1...4 #right exclusive
p "1...4 include? 4 #{exclusive.include? 4}"

#range to array
ran_arr = [1..5]
p ran_arr.to_a


#ranges in conditions
some_range = 1..3
puts "The max in the 1..3 range #{some_range.max}"
puts "Include 2? #{some_range.include? 2}"

print "puts (1...10) === 5.3 #=> "
puts (1...10) === 5.3

print "puts ('a'...'r') === 'r' #=> "
puts ('a'...'r') === 'r'

print "p ('k'..'z').to_a.sample(2) #=>"
p ('k'..'z').to_a.sample(2)

age = 55
print "age = 55 / case age #=> "
case age
	when 0..12 then puts "Still a baby"
	when 13..99 then puts "Teenager at heart!"
	else puts "You are getting older..."
end
