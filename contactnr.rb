#create the ask method
def ask(question, kind="string")
	print question + " "
	answer = gets.chomp
	answer =  answer.to_i if kind=="number"
	return answer
end


def addcontact
	contact_list["name"] = ask("What is the contact's name?")
	
	#create a while loop for contacts with multiple numbers
	while_answer = ""
	while while_answer != "n"
		ask("Enter a phone number? (y/n)")
		answer_to_phone_question = gets.chomp
		
		if answer_to_phone_question == "y" 
			phone = ask("Enter phone number")
			contact_list["phone_number"].push(phone)
		end
	
	end
	return contact
end


contact_list = {"name"=>"", "phone_number"=> Array.new}

sagot = contact_list.push(ask(""))