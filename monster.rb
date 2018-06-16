class Monster
	attr_reader :name, :actions

	def initialize(name)
		@name = name
		@actions = {
			screams: 0,
			scares: 0,
			runs: 0,
			hides: 0
		}
	end


	def say(&block)
		print "#{name} says..."
		yield
	end

	def print_scoreboard
		puts "-----------------------------"
		puts "#{name} Scoreboard"
		puts "-----------------------------"
		puts "-Screams : #{actions[:screams]}" 
		puts "-Scares : #{actions[:scares]}"
		puts "-Runs : #{actions[:runs]}" 
		puts "-Hides : #{actions[:hides]}"
		puts "-----------------------------"
	end

	def scream(&block)
		actions[:screams] += 1
		print "#{name} screams!"
		yield
	end

	def scare(&block)
		actions[:scares] += 1
		print "#{name} scares you!"
		yield

	end

	def run(&block)
	    actions[:runs] += 1
	    print "#{name} runs! "
	    yield
  	end

	def hide(&block)
	    actions[:hides] += 1
	    print "#{name} hides! "
	    yield self if block_given?
	 end


end

nrmonster = Monster.new("nenu")
nrmonster.say {puts "Welcome to my home"}

nrmonster.scream do 
	puts "BOO!"
end

nrmonster.scream do
	puts "boo again!!!"
	end



nrmonster.scare do
	puts "GO away!"
	end


nrmonster.run do
	puts "Going to get you"

end


nrmonster.run do
	puts "Going to get you again!"

end

nrmonster.hide do
  puts "Running away and hiding!"
  puts nrmonster.name
end

puts "\n"
nrmonster.print_scoreboard

