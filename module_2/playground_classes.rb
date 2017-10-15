class Person
	def initialize(name, age)
		@name = name
		@age = age
	end

	def get_info
		@additional_info = "Interesting"
		"Name: #{@name}, Age: #{@age}"
	end
end

person1 = Person.new("Joe", 14)
p person1.instance_variables
puts person1.get_info
p person1.instance_variables
######

class Person2
	def initialize(name, age)
		@name = name
		@age = age
	end
	def name
		@name
	end
	def name= (name)
		@name = name
	end
end

person = Person2.new("Seconde Example", "14")
puts person.name
person.name = "Mike"
puts person.name
#######

class Person3
	attr_accessor :name, :age
end
person = Person3.new
p person.name
person.name = "Mike - Third"
person.age = 15
puts person.name
puts person.age
person.age = "fifteen"
puts person.age

#######

class Person4
	attr_reader :age
	attr_accessor :name
	def initialize(name, age)
		@name = name
		self.age = age #need the self to refer to the setter, otherwise, ruby would create a local variable tor age, and not use the setter
		puts age
	end
	def age=(new_age)
		@age = new_age unless new_age > 120
	end
end

person = Person4.new("Kim the Fourth", 13)
puts "My age is #{person.age}"
person.age = 130; puts "trying to change the age to 130"
puts person.age