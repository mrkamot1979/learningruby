require "./Nr_phonenumber.rb"


class Nrcontact
	attr_writer :first_name, :middle_name, :last_name
	attr_reader :phone_numbers

	def initialize
		@phone_numbers = [] 
	end

	def add_phone_number(kind, number)
		addphone = Nr_phonenumber.new
		addphone.kind = kind
		addphone.number = number
		phone_numbers.push(addphone)

	end	

	def print_phone_numbers
		puts "Phone Numbers"
		phone_numbers.each{
			|phone_number| puts phone_number

		}
	end


	def first_name #these methods are to write the values 
 		@first_name
	end

	def middle_name
		  @middle_name
		 
	end

	def last_name
		@last_name
	end


	def first_last #this method is to display the names in various combinations
		first_name + " " + last_name
	end

	def last_first
		last_name + " " + first_name
	end

	def full_name
		full_name = " "
		full_name += first_name
		if !@middle_name.nil?
			full_name += " " + middle_name + " " + last_name
		else
			full_name += " " + last_name
		end
		return full_name
	end


	def to_s(format = 'full_name') 
		case format
		when 'full_name'
			full_name
		when 'last_first'
			last_first
		when 'first'
			first_name
		when 'last'
			last_name
		else
			first_last	
		end
	end
end
	


nino = Nrcontact.new
nino.first_name = "Nino"
nino.last_name = "Roldan"
nino.middle_name = "Abantao"


nino.add_phone_number("home","980093")
nino.add_phone_number("office", "4551549")
nino.add_phone_number("mobile", "0804 343 6466")
puts nino.to_s()
nino.print_phone_numbers

