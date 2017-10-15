class MyAlgorithm
	private
		def test1
			"Private"
		end
	protected
		def test2
			"Protected"
		end
	public 
		def public_again
			"Public"
		end
end

class AnotherWay
	def test1
		"Private"
	end
	def test2
		"Protected"
	end
	def test3
		"Public"
	end

	private :test1
	protected :test2
	public :test3
end
#################3

##Private access
class Person
	def initialize(age)
		self.age = age #needs to use self to refer to the set
		#that's the only case when you are able to use the self to 
		#reference a private method
		#remember that if try to set age without self in the constructor
		#ruby will create a local variable called age
		#and will not call the age setter
		puts my_age
		#puts self.my_age is illegal.
	end
	private
		def my_age
			@age
		end
		def age=(age)
			@age = age
		end
end

Person.new(25)
