#blocks can be passed into methods as parameters
#use {} for one line blocks, and do..end for multiline ones
4.times {|number| puts number unless number == 0}
4.times do |number|
		if number % 2 == 0
			puts number
		end
	end

#implicit block
def repeat_implict(msg)
	return "Block not given" unless block_given?
	puts msg
	yield
	yield
end
repeat_implict("works!") { puts 'hi'}

#explicit
def repeat_explicit(msg, &custom_block)
	return "No Custom Block" if custom_block.nil?
	puts msg
	custom_block.call
	custom_block.call
end
repeat_explicit("mensagem") do 
	puts "Hello"
end