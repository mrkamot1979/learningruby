
#create the method that asks questions and it should return an answer
def ask(question, kind="string")
	print question + " "
	answer = gets.chomp
	answer = answer.to_i if kind == "number"
	return answer
end


#test the method
#tanong = ask_question("What is your name?")
#puts tanong


#this method is used for adding the contact into a hash
def add_contact
	#create the hash, note the key phone number is going to be an array because we do not know how many phone numbers  the contact has.
	contact = {"name" => "", "phone_numbers" => Array.new}

	#we will be using the ask method now to add the data onto the hash
	contact["name"] = ask("What is the person's name?")
	

	#we will use a while loop as a person might have multiple phone numbers 
	#first, establish the variable
	answer_to_loop1 = ""
	while answer_to_loop1 != "n"
		answer_to_loop1 = ask("Do you want to add a phone number(y/n)?")
		if answer_to_loop1 == "y"
			phone = ask("Enter phone number ") 
			#push the phone number into the phone number array
			contact["phone_numbers"].push(phone)			
		end		
	end
	return contact
end

#BELOW WILL BE ACTUALLY U

#create the array
contact_list = []

answer_to_loop2 = ""

while answer_to_loop2 != "n"
	contact_list.push(add_contact())
	answer_to_loop2 = ask("Enter another? (y/n)")
end
