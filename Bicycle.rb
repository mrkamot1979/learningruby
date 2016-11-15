class Bicycle
	attr_reader :make, :model, :year

	def initialize(make, model, year)
	@make = make
	@model = model
	@year = year
	end

	def showInfo()
	puts "My bike is a " + make + " " + model + " " + "and it was made in the year " + year

	end


end 


dhbike = Bicycle.new("Intense", "Uzzi", "2007")
dhbike.showInfo()