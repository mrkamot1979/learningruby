
brothers = Hash.new
brothers = {"1st" => "nenu", "2nd" => "tak", "3rdA"=>"mon", "3rdB"=>"ching"}

=begin
#using each method; also called each_pair
brothers.each do |key,value|
	puts "The hash key is #{key} and the value is #{value}"

end

=end


#also uses each method but only takes one argument.
#note each_key and each_value
brothers.each_key do |key|
	puts "The value is #{key}"
end


