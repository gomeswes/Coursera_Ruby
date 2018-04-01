module Sports
	class Match
		attr_accessor :score
	end
end

module Patterns
	class Match
		attr_accessor :complete
	end
end

match1 = Sports::Match.new
match1.score = 45
puts match1.score

match2 = Patterns::Match.new
match2.complete = true
puts match2.complete

###
##Module as Mixin
module SayMyName
	attr_accessor :name
	def print_name
		puts "Name: #{@name}"
	end
end
class Person
	include SayMyName
end
class Company
	include SayMyName
end

person = Person.new
person.name = "Joe"
person.print_name
company = Company.new
company.name = "Google and Microsoft LLC"
company.print_name
####

require_relative "player"
require_relative 'team'

player1 = Player.new("Bob", 13, 5)
player2 = Player.new("Jim", 15, 4.5)
player3 = Player.new("Mike", 21, 5)
player4 = Player.new("Joe", 14, 5)
player5 = Player.new("Scott", 16, 3)

red_team = Team.new("Red")
red_team.add_players(player1, player2, player3, player4, player5)

#select only players between 14 and 20 and reject players with less the 4.5 SL
elig_players = red_team.select {|p| (14..20) === p.age}.reject {|p| p.skill_level < 4.5}
#the order in the === is important!! the range should be always in the left side
puts elig_players