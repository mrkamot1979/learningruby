class Nr_address
	attr_accessor :kind, :street_1, :street_2, :city, :state, :postal_code

	def to_s(format)
		address = ''
		case format
		when 'long'
			address += "#{kind}" + "\n"
			address += "#{street_1}" + "\n"
			if !street_2.nil? 
				address +=  "#{street_2}" + " "
			end
			address += "#{city}, #{state} #{postal_code}"
		when 'short'
			address += "#{kind}" + "\n"
			address += "#{street_1}"
		end
		address
	end




end


nenu = Nr_address.new

nenu.kind = "home"
nenu.street_1 = "road 1"
nenu.street_2 = "pag-asa"
nenu.city = "quezon city"
nenu.state = "metro manila"
nenu.postal_code = "1105"


puts nenu.to_s('short')
