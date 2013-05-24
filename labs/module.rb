module Talk
	def talk
		system("say #{name}")
	end
end

class Mountain
	include Talk
	attr_reader :name
	def initialize(name)
		@name=name
	end
end

class Ocean
	include Talk
	attr_reader :name
	def initialize(name)
		@name=name
	end
end