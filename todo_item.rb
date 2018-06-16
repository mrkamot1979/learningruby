class TodoItem
	attr_reader :name

	def initialize(name)
		@name = name
		@complete = false
	end

	def to_s
		if complete?
		"[C] #{name}"
		else
		"[I] #{name}"	

		end

	end


	def complete?
		@complete
	end

	def mark_incomplete!
		@complete = false
	end

	def mark_complete!
		@complete = true
	end

end
=begin
newtask = TodoItem.new("clean garage")
newtask.mark_incomplete!
puts newtask.complete?
puts newtask.to_s
=end