
class Player
  include Comparable
  attr_accessor :name, :score

  def <=>(other_player)
    score <=> other_player.score
  end

  def initialize(name, score)
    @name, @score = name, score
  end
end

=begin
player1 = Player.new("nenu", 100)
player2 = Player.new("tak", 90)

puts player1.score < player2.score 
=end

