require_relative 'Fetcher'


class Retriever
	include fetch
	attr_reader :name

	def initialize(name)
		
		@name = name
	end



end

ronin = Retriever.new("ronin")
ronin.fetch("ball")
