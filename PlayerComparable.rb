class Player
	include Comparable
	attr_accessor :name, :score

	def initialize(name, score)
		@name = name
		@score = score

	end

	def <=> (other_player)
		score <=> other_player.score
	end






end


p1 = Player.new("nenu", 100)
p2 = Player.new("thet", 50)

puts p1.score < p2.score
