def get_name(prompt, &block)
	print prompt + ": "
	
	name=gets.chomp
	block.call(name)
	name
end


my_name = get_name("Enter your name") do |name|
	puts "That's a cool name, #{name}"
end


puts "my_name: #{my_name}"
