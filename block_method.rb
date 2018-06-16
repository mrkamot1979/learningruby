def block_method
	puts "this is the first line in the block_method"
	yield
	puts "this statement is after the yield keyword"
end

block_method do 
	puts "this statement is called from the block"	



end

