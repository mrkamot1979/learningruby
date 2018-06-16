class Taskitem
	attr_reader :task_item_name, :complete

	def initialize(task_item_name, complete)
		@task_item_name = task_item_name
		@complete=complete
	end

	def get_task_status
		return complete
	end
end


newtask = Taskitem.new("clean bike", true)

puts "The current completion status of  #{newtask.task_item_name} is #{newtask.get_task_status}  "
