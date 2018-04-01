require "test/unit"
require_relative "playground"

class PlaygroundTest < Test::Unit::TestCase
	def setup
		@@calc = Calculator.new
	end

	def test_division
		assert_equal 2, @@calc.divide(4,2)
	end

	def test_multiply
		assert_equal 10, @@calc.multiply(2,5)
	end

	def test_subtract
		assert_equal 3, @@calc.subtract(6, 3)
	end

	def test_sum
		assert_equal 8, @@calc.sum(6,2)
	end

end