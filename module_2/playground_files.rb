all_text = ""
File.foreach("playground_flow.rb") do |line|
	line.chomp!
	all_text += line 
end
puts "All text size: #{all_text.size}"


begin
	File.foreach("non_existent_file") do |line|
		puts line
	end
rescue Exception => e
	puts e.message
end


file_exists = File.exists?("non_existent_file")
puts file_exists