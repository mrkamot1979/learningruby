File.open("nrsample.txt", "a") do |file|
	print "Enter name"
	name = gets.chomp
	file.puts "Name: #{name}"
	print "Enter email"
	email = gets.chomp
	file.puts "Email: #{email}"


end
