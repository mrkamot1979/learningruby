def create_list
	print "What is the list's name: "

	name = $stdin.gets.chomp
	#puts "the list name is #{listname}"

	#create the hash with the key of name and items
	hash = {"name" => name, "items" => Array.new}
	return hash
end

create_list
