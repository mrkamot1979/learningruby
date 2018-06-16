Customer = Struct.new(:name, :email) do 

	def name_with_email
		puts "#{name} <#{email}>"
	end


	
end

nino = Customer.new("Nino", "oninroldan@gmail.com")

nino.name_with_email
nino.each_pair do|name, value|
	puts "#{name} - #{value}"
	
end


class CustomerUsingOldMethod
	attr_accessor :name, :email
	def initialize(name, email)
		@name, @email = name, email
	end



end


puts nino.to_h

