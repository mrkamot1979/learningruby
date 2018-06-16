class MyArray
	attr_reader :array

	def initialize
		@array = []
	end

	def push(item)
		array.push(item)
	end

	def each(&block)
		i = 0
		while i < array.length
			block.call(array[i])
			i += 1
		end
		return array
	end


end
