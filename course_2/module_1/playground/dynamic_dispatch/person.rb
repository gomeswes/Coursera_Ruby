class Person
  attr_accessor :name, :age
end

person = Person.new
attrs = {name: "Intl", age: 63}
attrs.each {|key, value| person.send("#{key}=", value)}

p person

