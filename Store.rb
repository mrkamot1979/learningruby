class Shirt
	attr_accessor :attributes

	def initialize(attributes)
		@attributes = attributes
	end




end


shirt1 = Shirt.new(name: "MTF", size: "L")
shirt2 = Shirt.new(name: "NR", size: "M")

puts shirt2.name
