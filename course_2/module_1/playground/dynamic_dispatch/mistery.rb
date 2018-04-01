class Mistery
  def method_missing(method, *args)
    puts "Looking for..."
    puts "\"#{method}\" with params (#{args.join(',')})"
    puts "Sorry, he is on vacation.."
    yield "Ended up in method missing" if block_given?
  end
end

m = Mistery.new
m.solve_mistery("abc", 123) do |answer|
  puts "And the answer is: #{answer}"
end