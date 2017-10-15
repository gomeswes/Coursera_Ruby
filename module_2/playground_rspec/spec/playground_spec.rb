require 'rspec'
require_relative '../playground'

describe Calculator do
	before { @calc = Calculator.new("Rspec calculator")}

	it "should calculate 2 plus 2" do
		expect(@calc.plus(2,2)).to eq 4
	end

	it "should calculate 6 minus 5" do
		expect(@calc.minus(6,5)).to eq 1
	end

	it "should calculate the division of 8 by 2" do
		expect(@calc.divide(8,2)).to eq 4
	end

	it "should calculate 2 times 3" do
		expect(@calc.multiply(2,3)).to eq 6
	end
end