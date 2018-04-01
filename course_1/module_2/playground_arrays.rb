pet_arr = [1, "two", :three]
puts pet_arr[1]

arr_words = %w{ what a great day today! }
puts arr_words[-2]
puts "#{arr_words.first} - #{arr_words.last}"
p arr_words[-3, 2] #-3+2 chars

p arr_words[2..4]

puts arr_words.join(',')
#######

#array as stack LIFO operations
stack =[]
stack << "one"
stack << "two"
p stack
puts stack.pop
p stack
#############################


#array as queue FIFO operations
queue = []
queue.push "one"
queue.push "two"
p queue
puts queue.shift
p queue
##############################


a = [5,3,4,2].sort!.reverse!
p a
p a.sample(2) #always takes a random sample

a[6] = 33 #can insert outside of bounds of the array
p a
##################

#it will select all the even numbers
arr_select = [1,2,3,4,5,6,7,8,9]
new_select = arr_select.select {|num| num % 2 == 0}
p arr_select
p new_select

#it will reject all the even numbers
arr_reject = [1,2,3,4,5,6,7,8,9]
new_reject = arr_reject.reject {|num| num.even?}
p arr_reject
p new_reject

arr_map = [1,2,3,4,5,6,7,8,9]
new_map = arr_map.map {|num| num*num}
p arr_map
p new_map



#Array processing
a = [1,2,3,7,8,10]
a.each {|num| print num}
puts

new_arr = a.select {|num| num > 4}
p new_arr
new_arr = a.select { |num| num < 10 }.reject{|num| num.even?}
p new_arr

new_arr = a.map{|x| x*3}
p new_arr