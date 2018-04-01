class Calculator
	attr_accessor :name

	def initialize(name)
		self.name = name
	end

	def minus(a,b)
		a-b
	end

	def plus(a,b)
		a+b
	end

	def divide(a,b)
		a/b
	end

	def multiply(a,b)
		a*b
	end
end