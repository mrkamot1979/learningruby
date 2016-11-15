puts "Please enter name: "

name = $stdin.gets.chomp

#if name == "nenu"
#	puts "Oh thats my name too!"
#else
#	puts "Hello #{name}!"

#end


puts "Do you want to show your name backward (y/n)?"

ans = $stdin.gets.chomp

if ans == "y"
	puts name.reverse
elsif ans == "n"
	puts "OK we wont mess around with your name"
else
	puts "please enter either y or n"
end


	
