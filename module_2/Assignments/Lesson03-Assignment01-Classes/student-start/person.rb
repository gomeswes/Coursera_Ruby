class Person
	attr_accessor :first_name, :last_name
	def initialize(first_name, last_name)
		self.first_name = first_name
		self.last_name = last_name
		Person.register_person(self)
	end

	def self.register_person(person)
		@@people ||= []
		@@people.push person
	end
	def self.search_by_last_name(last_name)
		@@people.select {|p| p.last_name == last_name}
	end
end


p1 = Person.new("wesley", "gomes")
p2 = Person.new("aga", "oleg")
p3 = Person.new("another", "person")
p4 = Person.new("outra", "person")

p Person.search_by_last_name("gomes")