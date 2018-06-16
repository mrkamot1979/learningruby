class SimpleBenchmarker

	def run(description, &block)

		start_time = Time.now
		block.call
		end_time = Time.now

		elapsed_time = start_time - end_time
		puts "#{description}"
		puts "Elapsed time - #{elapsed_time}"
	end


end


nenu_benchmarker = SimpleBenchmarker.new
nenu_benchmarker.run "Sleep a random amount of time" do 
	5.times do
		print "."
		sleep(rand(0.1..1.0))
	end


		
end

