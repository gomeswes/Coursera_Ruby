#blocks can be passed into methods as parameters
#use {} for one line blocks, and do..end for multiline ones
4.times {|number| puts number unless number == 0}
4.times do |number|
		if number % 2 == 0
			puts number
		end
	end

#implicit block
def repeat_implict
	return "Block not given" unless block_given?
	yield
	yield
end
repeat_implict { puts 'hi'}

#explicit
def repeat_explicit(&custom_block)
	return "No Custom Block" if custom_block.nil?
	custom_block.call
	custom_block.call
end
repeat_implict do 
	puts "Hello"
end