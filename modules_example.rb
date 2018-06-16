module DogsRelated
	NBR_OF_DOGS_NEEDED = 5

	class Dog

		def bark
			puts "Woof..."
		end

		def eat
			"..."
		end

		def wag_tail
			puts "I'm doing this because I'm happy"
		end

		def give_the_paw
			puts "Why?" 

		end
	end

	class Bicycle

		def speedup
			puts "speeding up!"
		end



	end



end

x = 6
charlie = DogsRelated::Dog.new
intense = DogsRelated::Bicycle.new
#puts charlie.eat
puts charlie.give_the_paw
puts intense.speedup