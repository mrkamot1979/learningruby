module Airbag
	def deploy
		puts "deploying airbag"
	end
end

class Car
	include Airbag
	def initialize(make, model)
		@make, @model = make, model
	end



end


class Truck
	include Airbag
	def initialize(make, model, numberOfWheels)
		@make, @model, @numberOfWheels = make, model, numberOfWheels
	end


end


corolla = Car.new("toyota", "sequioa")
canter = Truck.new("mitsubishi", "canter", 2)

corolla.deploy
canter.deploy
	
