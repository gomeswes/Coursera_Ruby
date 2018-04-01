class Dog
  def bark
    puts "Woof!"
  end
  def greet(greeting)
    puts greeting
  end
end


dog = Dog.new
p '--bark--'
dog.bark
dog.send(:bark)
dog.send('bark')
method_name = :bark
dog.send(method_name)
p '--greet--'
dog.greet "Hello"
dog.send(:greet, "Waaf")
dog.send(:greet, "Whardof!")