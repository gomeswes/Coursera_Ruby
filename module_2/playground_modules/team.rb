class Team
	include Enumerable

	attr_accessor :name, :players

	def initialize(name)
		@name = name
		@players = []
	end

	def add_players(*players)
		@players += players
	end

	def to_s
		"#{@name} team: #{@players.join(", ")}"
	end

	def each #when including Enumerable, needs to implement each method
		@players.each {|player| yield player}		
		#for each player, yield it to the implicit block as parameter
	end
end